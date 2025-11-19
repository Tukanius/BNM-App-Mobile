import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:bnm_flutter/api/destination_api.dart';
import 'package:bnm_flutter/components/custom_loader/custom_loader.dart';
import 'package:bnm_flutter/components/ui/color.dart';
import 'package:bnm_flutter/models/destination_models/beautiful_place.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class CommercialDetailPageArguments {
  final String id;
  CommercialDetailPageArguments({required this.id});
}

class CommercialDetailPage extends StatefulWidget {
  final String id;

  static const routeName = "CommercialDetailPage";
  const CommercialDetailPage({super.key, required this.id});

  @override
  State<CommercialDetailPage> createState() => _CommercialDetailPageState();
}

class _CommercialDetailPageState extends State<CommercialDetailPage>
    with AfterLayoutMixin {
  bool isLoading = true;
  bool show = false;
  BeautifulPlace data = BeautifulPlace();
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    try {
      data = await DestinationApi().getDestinationDetail(widget.id);
      print('====tEt=====');
      print(data);
      print('====tEt=====');
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgGray,
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 25),
              SvgPicture.asset('assets/svg/arrow_left.svg'),
            ],
          ),
        ),
        title: Text(
          '${data.name ?? ''}',
          style: TextStyle(
            color: zeroBlack,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        // actions: [
        //   GestureDetector(
        //     onTap: () {
        //       Navigator.of(context).pushNamed(LoginPage.routeName);
        //     },
        //     child: Row(
        //       children: [
        //         SvgPicture.asset('assets/svg/profile_dest.svg'),
        //         SizedBox(width: 25),
        //       ],
        //     ),
        //   ),
        // ],
      ),
      backgroundColor: bgGray,
      body: isLoading == true
          ? CustomLoader()
          : SingleChildScrollView(
              child: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                  horizontal: 20,
                  vertical: 5,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            '${data.name}',
                            style: TextStyle(
                              color: darkGrey,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              show = !show;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: white,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 6,
                              vertical: 5.5,
                            ),
                            child: SvgPicture.asset(
                              show == true
                                  ? 'assets/svg/save.svg'
                                  : 'assets/svg/saved.svg',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: white,
                        border: Border.all(color: gray100),
                      ),
                      height: 200,
                      child: Image.network(
                        '${data.mainImage?.url}',
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                    SizedBox(height: 16),
                    data.features != null
                        ? Column(
                            children: data.features!
                                .map(
                                  (data) => Column(
                                    children: [
                                      data.description != null
                                          ? HtmlWidget(
                                              """${data.description}""",
                                            )
                                          : SizedBox(),

                                      SizedBox(height: 16),

                                      data.images != null
                                          ? CarouselSlider(
                                              options: CarouselOptions(
                                                viewportFraction: 0.9,
                                                enableInfiniteScroll: true,
                                                enlargeCenterPage: true,
                                                enlargeFactor: 0.15,
                                                aspectRatio: 16 / 9,
                                                autoPlay: true,
                                              ),
                                              items: data.images!.map((item) {
                                                return ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                  child: AspectRatio(
                                                    aspectRatio: 16 / 9,
                                                    child: Image.network(
                                                      '${item.url}',
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                            )
                                          // Column(
                                          //     children: data.images!
                                          //         .map(
                                          //           (item) =>
                                          //               Image.network('${item.url}'),
                                          //         )
                                          //         .toList(),
                                          //   )
                                          : SizedBox(),
                                    ],
                                  ),
                                )
                                .toList(),
                          )
                        : SizedBox(height: 16),
                    // Text(
                    //   'Khogno Tarna National Park is a remarkable destination where Mongolia’s diverse landscapes meet. Located about 280 km west of Ulaanbaatar, this park is often referred to as the “Mini Gobi” because of the unique combination of sand dunes, mountain ranges, and lush green valleys that exist together in one location. Visitors can explore the park’s contrasting landscapes by hiking, camel riding, and visiting historic monasteries.',
                    //   style: TextStyle(
                    //     color: darkGrey,
                    //     fontSize: 16,
                    //     fontWeight: FontWeight.w400,
                    //   ),
                    //   textAlign: TextAlign.justify,
                    // ),
                    SizedBox(
                      height: MediaQuery.of(context).padding.bottom + 50,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
