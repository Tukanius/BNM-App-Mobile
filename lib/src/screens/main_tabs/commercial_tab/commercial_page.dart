import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:bnm_flutter/api/destination_api.dart';
import 'package:bnm_flutter/components/controller/refresher.dart';
import 'package:bnm_flutter/components/custom_cards/commercial_card.dart';
import 'package:bnm_flutter/components/custom_loader/custom_loader.dart';
import 'package:bnm_flutter/components/ui/color.dart';
import 'package:bnm_flutter/models/result.dart' show Result, ResultArguments;
import 'package:flutter/material.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CommercialPage extends StatefulWidget {
  static const routeName = "CommercialPage";
  const CommercialPage({super.key});

  @override
  State<CommercialPage> createState() => _CommercialPageState();
}

class _CommercialPageState extends State<CommercialPage> with AfterLayoutMixin {
  bool isLoadingPage = true;
  Result resultDestination = Result();
  int page = 1;
  int limit = 10;
  bool isLoadingDestination = true;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    try {
      await listOfCommertial(page, limit);
      setState(() {
        isLoadingPage = false;
      });
    } catch (e) {
      setState(() {
        isLoadingPage = true;
      });
    }
  }

  listOfCommertial(page, limit) async {
    resultDestination = await DestinationApi().getDestinationList(
      ResultArguments(page: page, limit: limit, type: "APP_COMMERCIAL"),
    );
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

    await listOfCommertial(page, limit);
    refreshController.refreshCompleted();
  }

  onLoading() async {
    if (!mounted) return;
    setState(() {
      limit += 10;
    });
    await listOfCommertial(page, limit);
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
          'Commercial',
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
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    left: 20,
                                    right: 20,
                                    top: 5,
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Column(
                                          children: resultDestination.rows!
                                              .map(
                                                (data) => Column(
                                                  children: [
                                                    CommercialCard(
                                                      dataType: 'COMMERCIAL',
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
                                          height:
                                              mediaQuery.padding.bottom + 50,
                                        ),
                                      ],
                                    ),
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
                SizedBox(height: mediaQuery.padding.bottom + 50),
              ],
            ),
    );
  }
}
