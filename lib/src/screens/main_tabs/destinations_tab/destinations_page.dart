import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:bnm_flutter/api/destination_api.dart';
import 'package:bnm_flutter/components/controller/refresher.dart';
import 'package:bnm_flutter/components/custom_cards/destination_card.dart';
import 'package:bnm_flutter/components/custom_loader/custom_loader.dart';
import 'package:bnm_flutter/components/ui/color.dart';
import 'package:bnm_flutter/models/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class DestinationsPage extends StatefulWidget {
  static const routeName = "DestinationsPage";
  const DestinationsPage({super.key});

  @override
  State<DestinationsPage> createState() => _DestinationsPageState();
}

class _DestinationsPageState extends State<DestinationsPage>
    with AfterLayoutMixin {
  int currentIndex = 0;
  final gradient = LinearGradient(
    colors: [startColor, endColor],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
  Result resultDestination = Result();
  bool isLoadingDestination = true;
  int page = 1;
  int limit = 10;
  bool isLoading = true;
  // GeneralInit generalInit = GeneralInit();
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    try {
      await listOfDestinations(page, limit, currentIndex);
      setState(() {
        isLoading = false;
      });
    } catch (e) {
      setState(() {
        isLoading = true;
      });
    }
  }

  listOfDestinations(page, limit, filterIndex) async {
    resultDestination = await DestinationApi().getDestinationList(
      ResultArguments(
        page: page,
        limit: limit,
        type: filterIndex == 0 ? 'APP_DESTINATIONS' : "APP_ACCOMMODATION",
      ),
    );
    print('====tes=t===');

    print(currentIndex);
    print('====tes=t===');
    setState(() {
      isLoadingDestination = false;
    });
  }

  final RefreshController refreshController = RefreshController(
    initialRefresh: false,
  );

  onRefresh() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    if (!mounted) return;
    setState(() {
      isLoadingDestination = true;
      limit = 10;
    });

    await listOfDestinations(page, limit, currentIndex);
    refreshController.refreshCompleted();
  }

  onLoading() async {
    if (!mounted) return;
    setState(() {
      limit += 10;
    });
    await listOfDestinations(page, limit, currentIndex);
    refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          currentIndex == 0 ? 'Travel Destinations' : 'Accommodation',
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
      body: isLoading == true
          ? CustomLoader()
          : Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () async {
                            setState(() {
                              currentIndex = 0;
                              isLoadingDestination = true;
                            });
                            await listOfDestinations(page, limit, currentIndex);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: currentIndex == 0 ? null : white,
                              border: currentIndex == 0
                                  ? null
                                  : Border.all(color: gray300),
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
                      SizedBox(width: 8),
                      Expanded(
                        child: GestureDetector(
                          onTap: () async {
                            setState(() {
                              currentIndex = 1;
                              isLoadingDestination = true;
                            });
                            await listOfDestinations(page, limit, currentIndex);
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: currentIndex == 1 ? null : white,
                              border: currentIndex == 1
                                  ? null
                                  : Border.all(color: gray300),
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
                ),
                SizedBox(height: 12),
                Expanded(
                  child: Refresher(
                    color: primary,
                    refreshController: refreshController,
                    onLoading: onLoading,
                    onRefresh: onRefresh,
                    child: Column(
                      children: [
                        isLoadingDestination == true
                            ? CustomLoader()
                            : (resultDestination.rows != null &&
                                  resultDestination.rows!.isNotEmpty)
                            ? Expanded(
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      SizedBox(height: 4),
                                      Column(
                                        children: resultDestination.rows!
                                            .map(
                                              (data) => Column(
                                                children: [
                                                  DestinationCard(
                                                    dataType: currentIndex == 0
                                                        ? 'APP_DESTINATIONS'
                                                        : "APP_ACCOMMODATION",
                                                    data: data,
                                                    seeAll: true,
                                                  ),
                                                  SizedBox(height: 8),
                                                ],
                                              ),
                                            )
                                            .toList(),
                                      ),
                                      SizedBox(
                                        height: mediaQuery.padding.bottom + 50,
                                      ),
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
                  ),
                ),
              ],
            ),
    );
  }
}
