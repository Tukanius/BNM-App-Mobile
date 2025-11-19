// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'dart:io';

import 'package:after_layout/after_layout.dart';
import 'package:bnm_flutter/api/destination_api.dart';
import 'package:bnm_flutter/components/custom_loader/custom_loader.dart';
import 'package:bnm_flutter/components/ui/color.dart';
import 'package:bnm_flutter/models/destination_models/beautiful_place.dart';
import 'package:bnm_flutter/src/screens/main_tabs/destinations_tab/full_screen_image.dart';
import 'package:bnm_flutter/src/screens/main_tabs/destinations_tab/html_expanded.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart' show SvgPicture;
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DestinationDetailPageArguments {
  final String id;
  DestinationDetailPageArguments({required this.id});
}

class DestinationDetailPage extends StatefulWidget {
  final String id;

  static const routeName = "DestinationDetailPage";
  const DestinationDetailPage({super.key, required this.id});

  @override
  State<DestinationDetailPage> createState() => _DestinationDetailPageState();
}

class _DestinationDetailPageState extends State<DestinationDetailPage>
    with AfterLayoutMixin {
  bool showYoutubePlayer = false;
  bool isLoading = true;
  bool show = false;
  BeautifulPlace data = BeautifulPlace();
  YoutubePlayerController? _youtubeController;
  bool isPlaying = false;
  @override
  FutureOr<void> afterFirstLayout(BuildContext context) async {
    try {
      data = await DestinationApi().getDestinationDetail(widget.id);
      print('===features == test===');
      print(data.features);
      print('===features == test===');

      if (data.features != null && data.features!.first.url != null) {
        final videoId = YoutubePlayer.convertUrlToId(
          '${data.features!.first.url}',
        );
        _youtubeController = YoutubePlayerController(
          initialVideoId: videoId!,
          flags: YoutubePlayerFlags(
            autoPlay: true,
            hideControls: true,
            disableDragSeek: true,
            showLiveFullscreenButton: false,
            loop: true,
          ),
        );
      }

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
  void dispose() {
    _youtubeController?.dispose();
    super.dispose();
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
          'Destination',
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
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
                              show == false
                                  ? 'assets/svg/save.svg'
                                  : 'assets/svg/saved.svg',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  data.features != null && data.features!.isNotEmpty
                      ? Column(
                          children: data.features!
                              .map(
                                (data) => Column(
                                  children: [
                                    data.description != null
                                        ? Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 16,
                                            ),
                                            child: HtmlExpandableText(
                                              htmlText: data.description ?? '',
                                              trimLines: 4,
                                            ),
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
                                              return GestureDetector(
                                                onTap: () {
                                                  Navigator.of(
                                                    context,
                                                  ).pushNamed(
                                                    FullScreenImage.routeName,
                                                    arguments:
                                                        FullScreenImageArguments(
                                                          images: data.images!,
                                                        ),
                                                  );
                                                },
                                                child: ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(16),
                                                  child: AspectRatio(
                                                    aspectRatio: 16 / 9,
                                                    child: Image.network(
                                                      '${item.url}',
                                                      fit: BoxFit.cover,
                                                      loadingBuilder:
                                                          (
                                                            context,
                                                            child,
                                                            loadingProgress,
                                                          ) {
                                                            if (loadingProgress ==
                                                                null)
                                                              return child;
                                                            return Container(
                                                              width: 160,
                                                              height: 160,
                                                              color: gray200,
                                                              child: Center(
                                                                child:
                                                                    Platform
                                                                        .isIOS
                                                                    ? CupertinoActivityIndicator(
                                                                        radius:
                                                                            10,
                                                                        color:
                                                                            primary,
                                                                      )
                                                                    : CircularProgressIndicator(
                                                                        value:
                                                                            loadingProgress.expectedTotalBytes !=
                                                                                null
                                                                            ? loadingProgress.cumulativeBytesLoaded /
                                                                                  loadingProgress.expectedTotalBytes!
                                                                            : null,
                                                                        color:
                                                                            primary,
                                                                        strokeWidth:
                                                                            1,
                                                                      ),
                                                              ),
                                                            );
                                                          },
                                                    ),
                                                  ),
                                                ),
                                              );
                                            }).toList(),
                                          )
                                        : SizedBox(),
                                    SizedBox(height: 16),
                                  ],
                                ),
                              )
                              .toList(),
                        )
                      : SizedBox(),
                  SizedBox(height: 16),
                  data.features != null &&
                          data.features!.isNotEmpty &&
                          data.features!.first.url != null
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: mediaQuery.size.width,
                            height: mediaQuery.size.height * 0.5,
                            child: data.features!.first.url != null
                                ? showYoutubePlayer
                                      ? ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            10,
                                          ),
                                          child: GestureDetector(
                                            onTap: () {
                                              if (_youtubeController!
                                                  .value
                                                  .isPlaying) {
                                                _youtubeController!.pause();
                                                setState(
                                                  () => isPlaying = false,
                                                );
                                              } else {
                                                _youtubeController!.play();
                                                setState(
                                                  () => isPlaying = true,
                                                );
                                              }
                                            },
                                            child: YoutubePlayer(
                                              controller: _youtubeController!,
                                              showVideoProgressIndicator: true,
                                            ),
                                          ),
                                        )
                                      : Stack(
                                          alignment: Alignment.center,
                                          fit: StackFit.expand,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    '${data.mainImage!.url}',
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              width: mediaQuery.size.width,
                                              height:
                                                  mediaQuery.size.height * 0.25,
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: InkWell(
                                                onTap: () {
                                                  // _videoController.value.isPlaying
                                                  //     ? _videoController.pause()
                                                  //     : _videoController.play();
                                                  setState(() {
                                                    showYoutubePlayer = true;
                                                  });
                                                },
                                                child: Icon(
                                                  Icons.play_circle,
                                                  size: 50,
                                                  color: Colors.white
                                                      .withOpacity(0.7),
                                                ),
                                              ),
                                            ),
                                          ],
                                        )
                                : SizedBox(),
                          ),
                        )
                      : SizedBox(),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Recommended accommodations',
                      style: TextStyle(
                        color: darkGrey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 12),
                  SizedBox(height: MediaQuery.of(context).padding.bottom + 50),
                ],
              ),
            ),
    );
  }
}
