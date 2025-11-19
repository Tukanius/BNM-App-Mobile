import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:bnm_flutter/api/destination_api.dart';
import 'package:bnm_flutter/components/custom_loader/custom_loader.dart';
import 'package:bnm_flutter/components/ui/color.dart';
import 'package:bnm_flutter/models/destination_models/destination.dart';
import 'package:bnm_flutter/models/result.dart';
import 'package:bnm_flutter/src/screens/main_tabs/commercial_tab/commercial_detail_page.dart';
// import 'package:bnm_flutter/src/auth/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommercialDirectionPageArguments {
  final String title;
  final String referenceId;
  final String dataType;
  CommercialDirectionPageArguments({
    required this.referenceId,
    required this.title,
    required this.dataType,
  });
}

class CommercialDirectionPage extends StatefulWidget {
  final String title;
  final String referenceId;
  final String dataType;

  static const routeName = "CommercialDirectionPage";
  const CommercialDirectionPage({
    super.key,
    required this.title,
    required this.referenceId,
    required this.dataType,
  });

  @override
  State<CommercialDirectionPage> createState() =>
      _CommercialDirectionPageState();
}

class _CommercialDirectionPageState extends State<CommercialDirectionPage>
    with AfterLayoutMixin {
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
        widget.referenceId,
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
        reference: referenceId,
        type: dataType,
      ),
    );
    setState(() {
      isLoadingDestination = false;
    });
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
          : Column(
              children: [
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
                                  _buildBeautifulPlacesGrid(resultDestination),
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
            Navigator.of(context).pushNamed(
              CommercialDetailPage.routeName,
              arguments: CommercialDetailPageArguments(id: navId),
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
