import 'dart:async';
import 'dart:io';

import 'package:after_layout/after_layout.dart';
import 'package:bnm_flutter/api/destination_api.dart';
import 'package:bnm_flutter/components/custom_loader/custom_loader.dart';
import 'package:bnm_flutter/components/ui/color.dart';
import 'package:bnm_flutter/models/destination_models/beautiful_place.dart';
// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class AccommodationDetailPageArguments {
  final String id;
  AccommodationDetailPageArguments({required this.id});
}

class AccommodationDetailPage extends StatefulWidget {
  final String id;

  static const routeName = "AccommodationDetailPage";
  const AccommodationDetailPage({super.key, required this.id});

  @override
  State<AccommodationDetailPage> createState() =>
      _AccommodationDetailPageState();
}

class _AccommodationDetailPageState extends State<AccommodationDetailPage>
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
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: isLoading == true
          ? CustomLoader()
          : SingleChildScrollView(
              child: Column(
                children: [
                  Image.network(
                    '${data.mainImage!.url}',
                    // 'assets/images/acc_detail_dev.png',
                    width: mediaQuery.size.width,
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Container(
                        width: mediaQuery.size.width,
                        height: 200,
                        color: gray200,
                        child: Center(
                          child: Platform.isIOS
                              ? CupertinoActivityIndicator(
                                  radius: 10,
                                  color: primary,
                                )
                              : CircularProgressIndicator(
                                  value:
                                      loadingProgress.expectedTotalBytes != null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes!
                                      : null,
                                  color: primary,
                                  strokeWidth: 1,
                                ),
                        ),
                      );
                    },
                  ),
                  // Text(data.name!),
                  // SizedBox(height: 32,),
                  // Container(
                  //   padding: EdgeInsets.all(12),
                  //   child: Column(
                  //     children: [
                  //       Row(
                  //         children: [
                  //           Expanded(
                  //             child: Container(height: 200, color: redButton),
                  //           ),
                  //           SizedBox(width: 12),
                  //           Expanded(
                  //             child: Container(height: 200, color: redButton),
                  //           ),
                  //         ],
                  //       ),
                  //       SizedBox(height: 12),
                  //       Row(
                  //         children: [
                  //           Expanded(
                  //             child: Container(height: 200, color: redButton),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Wrap(
                  //   runSpacing: 12,
                  //   direction: Axis.vertical,
                  //   children: [1, 2, 3, 4, 5, 6, 7, 8]
                  //       .map(
                  //         (item) => Container(
                  //           height: 210,
                  //           width: 100,
                  //           color: blue200,
                  //         ),
                  //       )
                  //       .toList(),
                  // ),
                  // SizedBox(height: 16),
                  // data.features != null
                  //     ? Column(
                  //         children: data.features!
                  //             .map(
                  //               (data) => Column(
                  //                 children: [
                  //                   data.description != null
                  //                       ? HtmlWidget("""${data.description}""")
                  //                       : SizedBox(),

                  //                   SizedBox(height: 16),

                  //                   data.images != null
                  //                       ? CarouselSlider(
                  //                           options: CarouselOptions(
                  //                             viewportFraction: 0.9,
                  //                             enableInfiniteScroll: true,
                  //                             enlargeCenterPage: true,
                  //                             enlargeFactor: 0.15,
                  //                             aspectRatio: 16 / 9,
                  //                             autoPlay: true,
                  //                           ),
                  //                           items: data.images!.map((item) {
                  //                             return ClipRRect(
                  //                               borderRadius:
                  //                                   BorderRadius.circular(16),
                  //                               child: AspectRatio(
                  //                                 aspectRatio: 16 / 9,
                  //                                 child: Image.network(
                  //                                   '${item.url}',
                  //                                   fit: BoxFit.cover,
                  //                                 ),
                  //                               ),
                  //                             );
                  //                           }).toList(),
                  //                         )
                  //                       // Column(
                  //                       //     children: data.images!
                  //                       //         .map(
                  //                       //           (item) =>
                  //                       //               Image.network('${item.url}'),
                  //                       //         )
                  //                       //         .toList(),
                  //                       //   )
                  //                       : SizedBox(),
                  //                 ],
                  //               ),
                  //             )
                  //             .toList(),
                  //       )
                  //     : SizedBox(height: 16),
                  // Text(
                  //   'Khogno Tarna National Park is a remarkable destination where Mongolia’s diverse landscapes meet. Located about 280 km west of Ulaanbaatar, this park is often referred to as the “Mini Gobi” because of the unique combination of sand dunes, mountain ranges, and lush green valleys that exist together in one location. Visitors can explore the park’s contrasting landscapes by hiking, camel riding, and visiting historic monasteries.',
                  //   style: TextStyle(
                  //     color: darkGrey,
                  //     fontSize: 16,
                  //     fontWeight: FontWeight.w400,
                  //   ),
                  //   textAlign: TextAlign.justify,
                  // ),
                  SizedBox(height: MediaQuery.of(context).padding.bottom + 50),
                ],
              ),
            ),
    );
  }
}
