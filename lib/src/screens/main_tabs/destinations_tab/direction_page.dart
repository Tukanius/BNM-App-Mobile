import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:bnm_flutter/api/destination_api.dart';
import 'package:bnm_flutter/components/custom_loader/custom_loader.dart';
import 'package:bnm_flutter/components/ui/color.dart';
import 'package:bnm_flutter/models/destination_models/destination.dart';
import 'package:bnm_flutter/models/result.dart';
import 'package:bnm_flutter/src/screens/main_tabs/accommodation_tab/accommodation_detail_page.dart';
import 'package:bnm_flutter/src/screens/main_tabs/destinations_tab/destination_detail_page.dart';
// import 'package:bnm_flutter/src/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DirectionPageArguments {
  final String title;
  final String referenceName;
  final int tabIndex;
  final String dataType;
  DirectionPageArguments({
    required this.referenceName,
    required this.title,
    required this.tabIndex,
    required this.dataType,
  });
}

class DirectionPage extends StatefulWidget {
  final String title;
  final int tabIndex;
  final String referenceName;
  final String dataType;

  static const routeName = "DirectionPage";
  const DirectionPage({
    super.key,
    required this.title,
    required this.tabIndex,
    required this.referenceName,
    required this.dataType,
  });

  @override
  State<DirectionPage> createState() => _DirectionPageState();
}

class _DirectionPageState extends State<DirectionPage> with AfterLayoutMixin {
  int currentIndex = 0;
  Result resultDestination = Result();
  bool isLoadingDestination = true;
  int page = 1;
  int limit = 10;
  bool isLoadingPage = false;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    try {
      await listOfDestinations(
        page,
        limit,
        widget.dataType,
        widget.referenceName,
      );
      setState(() {
        isLoadingPage = false;
      });
    } catch (e) {
      setState(() {
        isLoadingPage = true;
      });
    }
  }

  listOfDestinations(page, limit, dataType, referenceId) async {
    resultDestination = await DestinationApi().getDestinationList(
      ResultArguments(
        page: page,
        limit: limit,
        reference: widget.referenceName,
        type: dataType,
      ),
    );
    setState(() {
      isLoadingDestination = false;
    });
  }

  @override
  void initState() {
    currentIndex = widget.tabIndex;
    super.initState();
  }

  final gradient = LinearGradient(
    colors: [startColor, endColor],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
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
          widget.title,
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
      backgroundColor: white,
      body: isLoadingPage == true
          ? CustomLoader()
          : SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: () async {
                                  setState(() {
                                    currentIndex = 0;
                                  });
                                  await listOfDestinations(
                                    page,
                                    limit,
                                    "APP_DESTINATIONS",
                                    widget.referenceName,
                                  );
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: currentIndex == 0 ? null : gray200,
                                    gradient: currentIndex == 0
                                        ? LinearGradient(
                                            colors: [startColor, endColor],
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                          )
                                        : null,
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        currentIndex == 0
                                            ? 'assets/svg/destination_tab_selected.svg'
                                            : 'assets/svg/destination_tab_unselected.svg',
                                      ),
                                      SizedBox(width: 8),
                                      currentIndex == 0
                                          ? Text(
                                              'Destinations',
                                              style: TextStyle(
                                                color: white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            )
                                          : ShaderMask(
                                              shaderCallback: (bounds) =>
                                                  gradient.createShader(
                                                    Rect.fromLTWH(
                                                      0,
                                                      0,
                                                      bounds.width,
                                                      bounds.height,
                                                    ),
                                                  ),
                                              child: Text(
                                                'Destinations',
                                                style: TextStyle(
                                                  color: white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: GestureDetector(
                                onTap: () async {
                                  setState(() {
                                    currentIndex = 1;
                                  });
                                  await listOfDestinations(
                                    page,
                                    limit,
                                    "APP_ACCOMMODATION",
                                    widget.referenceName,
                                  );
                                  print('======rows====');
                                  print(resultDestination.rows);
                                  print('======rows====');
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    color: currentIndex == 1 ? null : gray200,
                                    gradient: currentIndex == 1
                                        ? LinearGradient(
                                            colors: [startColor, endColor],
                                            begin: Alignment.centerLeft,
                                            end: Alignment.centerRight,
                                          )
                                        : null,
                                  ),
                                  padding: EdgeInsets.symmetric(vertical: 8),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        currentIndex == 1
                                            ? 'assets/svg/acc_tab_selected.svg'
                                            : 'assets/svg/acc_tab_unselected.svg',
                                      ),
                                      SizedBox(width: 8),
                                      currentIndex == 1
                                          ? Text(
                                              'Accommodation',
                                              style: TextStyle(
                                                color: white,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            )
                                          : ShaderMask(
                                              shaderCallback: (bounds) =>
                                                  gradient.createShader(
                                                    Rect.fromLTWH(
                                                      0,
                                                      0,
                                                      bounds.width,
                                                      bounds.height,
                                                    ),
                                                  ),
                                              child: Text(
                                                'Accommodation',
                                                style: TextStyle(
                                                  color: white,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      isLoadingDestination == true
                          ? CustomLoader()
                          : (resultDestination.rows != null &&
                                resultDestination.rows!.isNotEmpty)
                          ? Padding(
                              padding: const EdgeInsets.only(
                                left: 20,
                                right: 20,
                                top: 16,
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    _buildBeautifulPlacesGrid(
                                      resultDestination,
                                    ),
                                    // Column(
                                    //   children: resultDestination.rows!.first!
                                    //       .map(
                                    //         (data) => Column(
                                    //           children: [
                                    //             DestinationCard(
                                    //               dataType: '${widget.dataType}',
                                    //               data: data,
                                    //               seeAll: false,
                                    //             ),
                                    //             SizedBox(height: 8),
                                    //           ],
                                    //         ),
                                    //       )
                                    //       .toList(),
                                    // ),
                                  ],
                                ),
                              ),
                            )
                          : Column(
                              children: [
                                SizedBox(height: 12),
                                Center(
                                  child: const Text(
                                    'Data not found',
                                    style: TextStyle(
                                      color: black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    ],
                  ),
                  // resultDestination.rows != null
                  //     ? resultDestination!.rows.map((item) => Container()).toList()
                  //     : SizedBox(),
                  // currentIndex == 0
                  //     ? Padding(
                  //         padding: const EdgeInsets.symmetric(horizontal: 20),
                  //         child: Column(
                  //           children: [
                  //             SizedBox(height: 12),
                  //             Center(child: Text('${widget.title} destinations')),
                  //             SizedBox(height: 12),
                  //             Image.asset('assets/images/dest_direction_dev.png'),
                  //             SizedBox(height: 8),
                  //             Row(
                  //               children: [
                  //                 Expanded(
                  //                   child: Image.asset(
                  //                     'assets/images/dest_direction_dev1.png',
                  //                   ),
                  //                 ),
                  //                 SizedBox(width: 8),
                  //                 Expanded(
                  //                   child: Image.asset(
                  //                     'assets/images/dest_direction_dev2.png',
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ],
                  //         ),
                  //       )
                  //     : Padding(
                  //         padding: const EdgeInsets.symmetric(horizontal: 20),
                  //         child: Column(
                  //           children: [
                  //             SizedBox(height: 12),
                  //             Center(
                  //               child: Text('${widget.title}  accommodation'),
                  //             ),
                  //             SizedBox(height: 12),
                  //             Image.asset('assets/images/acc_direction_dev.png'),
                  //             SizedBox(height: 8),
                  //             Row(
                  //               children: [
                  //                 Expanded(
                  //                   child: Image.asset(
                  //                     'assets/images/acc_direction_dev1.png',
                  //                   ),
                  //                 ),
                  //                 SizedBox(width: 8),
                  //                 Expanded(
                  //                   child: Image.asset(
                  //                     'assets/images/acc_direction_dev1.png',
                  //                   ),
                  //                 ),
                  //               ],
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                ],
              ),
            ),
    );
  }

  Widget _buildBeautifulPlacesGrid(Result resultDestination) {
    final destination = resultDestination.rows!.first as Destination;
    final places = destination.beautifulPlaces ?? [];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: places.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        final place = places[index];
        final imageUrl = place.mainImage?.url;
        final name = place.name ?? '';
        final navId = place.id ?? '';

        return GestureDetector(
          onTap: () {
            widget.dataType == "APP_DESTINATIONS"
                ? Navigator.of(context).pushNamed(
                    DestinationDetailPage.routeName,
                    arguments: DestinationDetailPageArguments(id: navId),
                  )
                : Navigator.of(context).pushNamed(
                    AccommodationDetailPage.routeName,
                    arguments: AccommodationDetailPageArguments(id: navId),
                  );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Stack(
              children: [
                imageUrl != null
                    ? Image.network(
                        imageUrl,
                        width: double.infinity,
                        height: double.infinity,
                        fit: BoxFit.cover,
                      )
                    : Container(
                        color: gray200,
                        child: const Icon(Icons.image, size: 40),
                      ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(8),

                    // color: Colors.black54,
                    child: Text(
                      name,
                      style: const TextStyle(
                        color: white,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
