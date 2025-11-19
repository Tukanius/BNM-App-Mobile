import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:bnm_flutter/api/destination_api.dart';
// import 'package:bnm_flutter/components/custom_cards/destination_card.dart';
// import 'package:bnm_flutter/components/custom_loader/custom_loader.dart';
import 'package:bnm_flutter/components/ui/color.dart';
import 'package:bnm_flutter/models/result.dart';
import 'package:bnm_flutter/src/screens/main_tabs/destinations_tab/direction_page.dart';
import 'package:bnm_flutter/src/screens/main_tabs/home_tab/search_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AccommodationPage extends StatefulWidget {
  static const routeName = "AccommodationPage";
  const AccommodationPage({super.key});

  @override
  State<AccommodationPage> createState() => _AccommodationPageState();
}

class _AccommodationPageState extends State<AccommodationPage>
    with AfterLayoutMixin {
  final List<String> imgList = [
    'assets/images/ads1.jpg',
    'assets/images/ads2.jpg',
    'assets/images/ads3.jpg',
  ];
  TextEditingController textController = TextEditingController();
  bool isLoadingPage = true;
  Result resultDestination = Result();
  int page = 1;
  int limit = 1;
  bool isLoadingDestination = true;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    try {
      // await listOfDestinations(page, limit);
      setState(() {
        isLoadingPage = false;
      });
    } catch (e) {
      setState(() {
        isLoadingPage = true;
      });
    }
  }

  listOfDestinations(page, limit) async {
    resultDestination = await DestinationApi().getDestinationList(
      ResultArguments(
        page: page,
        limit: limit,
        type: "ACCOMMODATION",
        reference: "68f8cb9c05768bb6c37378e1",
      ),
    );
    print('====tes=t===');

    print('====tes=t===');
    setState(() {
      isLoadingDestination = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgGray,
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Accommodation',
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(width: 16),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(
                        SearchPage.routeName,
                        arguments: SearchPageArguments(
                          controller: textController,
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/svg/search.svg'),
                          SizedBox(width: 8),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: gray400,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 16),
              ],
            ),
            SizedBox(height: 16),
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 0.9,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                enlargeFactor: 0.15,
                aspectRatio: 16 / 9,
                autoPlay: true,
              ),
              items: imgList.map((item) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.asset(item, fit: BoxFit.cover),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 24),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      DirectionMenuItem(
                        title: "Nearby",
                        imagePath: "assets/images/thumbnails/nearby.png",
                        routeName: DirectionPage.routeName,
                        tabIndex: 1,
                        referenceId: "Nearby",
                      ),
                      const SizedBox(width: 16),
                      DirectionMenuItem(
                        title: "Central",
                        imagePath: "assets/images/thumbnails/central.png",
                        routeName: DirectionPage.routeName,
                        tabIndex: 1,
                        referenceId: "Central Mongolia",
                      ),
                      const SizedBox(width: 16),
                      DirectionMenuItem(
                        title: "Southern",
                        imagePath: "assets/images/thumbnails/southern.png",
                        routeName: DirectionPage.routeName,
                        tabIndex: 1,
                        referenceId: "Southern Mongolia",
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      DirectionMenuItem(
                        title: "Western",
                        imagePath: "assets/images/thumbnails/western.png",
                        routeName: DirectionPage.routeName,
                        tabIndex: 1,
                        referenceId: "Western Mongolia",
                      ),
                      const SizedBox(width: 16),
                      DirectionMenuItem(
                        title: "Eastern",
                        imagePath: "assets/images/thumbnails/eastern.png",
                        routeName: DirectionPage.routeName,
                        tabIndex: 1,
                        referenceId: "Eastern Mongolia",
                      ),
                      const SizedBox(width: 16),
                      DirectionMenuItem(
                        title: "Northern",
                        imagePath: "assets/images/thumbnails/northern.png",
                        routeName: DirectionPage.routeName,
                        tabIndex: 1,
                        referenceId: "Northern Mongolia",
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Image.asset('assets/images/add_ads.png', fit: BoxFit.cover),
                  // SizedBox(height: 16),
                  // Text(
                  //   'Top Accomodations',
                  //   style: TextStyle(
                  //     color: darkGrey,
                  //     fontSize: 18,
                  //     fontWeight: FontWeight.w700,
                  //   ),
                  // ),
                ],
              ),
            ),
            SizedBox(height: 12),
            // Column(
            //   children: [
            //     isLoadingDestination == true
            //         ? CustomLoader()
            //         : (resultDestination.rows != null &&
            //               resultDestination.rows!.isNotEmpty)
            //         ? Padding(
            //             padding: const EdgeInsets.only(
            //               // left: 20,
            //               // right: 20,
            //               top: 5,
            //             ),
            //             child: SingleChildScrollView(
            //               child: Column(
            //                 children: resultDestination.rows!
            //                     .map(
            //                       (data) => Column(
            //                         children: [
            //                           DestinationCard(
            //                             dataType: 'ACCOMMODATION',
            //                             data: data,
            //                             seeAll: false,
            //                           ),
            //                           SizedBox(height: 8),
            //                         ],
            //                       ),
            //                     )
            //                     .toList(),
            //               ),
            //             ),
            //           )
            //         : Column(
            //             children: [
            //               SizedBox(height: 12),
            //               Center(
            //                 child: const Text(
            //                   'Data not found',
            //                   style: TextStyle(
            //                     color: black,
            //                     fontSize: 14,
            //                     fontWeight: FontWeight.w400,
            //                   ),
            //                 ),
            //               ),
            //             ],
            //           ),
            //   ],
            // ),
            // Container(
            //   height: 150,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     padding: EdgeInsets.only(left: 20, right: 4),
            //     children: [1, 2, 3, 4]
            //         .map(
            //           (item) => Row(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: [
            //               GestureDetector(
            //                 onTap: () {
            //                   Navigator.of(
            //                     context,
            //                   ).pushNamed(AccommodationDetailPage.routeName);
            //                 },
            //                 child: Image.asset(
            //                   'assets/images/acc_dev.png',
            //                   width: 150,
            //                   height: 150,
            //                 ),
            //               ),
            //               SizedBox(width: 16),
            //             ],
            //           ),
            //         )
            //         .toList(),
            //   ),
            // ),
            SizedBox(height: mediaQuery.padding.bottom + 50),
          ],
        ),
      ),
    );
  }
}

class DirectionMenuItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final String routeName;
  final int tabIndex;
  final String referenceId;

  const DirectionMenuItem({
    Key? key,
    required this.title,
    required this.imagePath,
    required this.routeName,
    required this.tabIndex,
    required this.referenceId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          // Navigator.of(context).pushNamed(
          //   routeName,
          //   arguments: DirectionPageArguments(
          //     title: title,
          //     tabIndex: tabIndex,
          //     referenceId: referenceId,
          //     dataType: 'ACCOMMODATION',
          //   ),
          // );
          Navigator.of(context).pushNamed(
            DirectionPage.routeName,
            arguments: DirectionPageArguments(
              title: referenceId,
              referenceName: referenceId,
              tabIndex: tabIndex,
              dataType: 'APP_ACCOMMODATION',
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(12),
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
              const SizedBox(height: 4),
              Text(
                title,
                style: TextStyle(
                  color: darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
