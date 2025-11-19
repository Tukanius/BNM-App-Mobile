// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ChoijinLama extends StatefulWidget {
  const ChoijinLama({super.key});

  @override
  State<ChoijinLama> createState() => _ChoijinLamaState();
}

class _ChoijinLamaState extends State<ChoijinLama> {
  late YoutubePlayerController _youtubeController;

  final List<String> imageList = [
    "http://159.223.56.204:8000/asset/Ub/Museums/2/ChoijinLama/ChoijinLama%20(2%20of%2011).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/2/ChoijinLama/ChoijinLama%20(3%20of%2011).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/2/ChoijinLama/ChoijinLama%20(4%20of%2011).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/2/ChoijinLama/ChoijinLama%20(5%20of%2011).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/2/ChoijinLama/ChoijinLama%20(6%20of%2011).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/2/ChoijinLama/ChoijinLama%20(7%20of%2011).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/2/ChoijinLama/ChoijinLama%20(8%20of%2011).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/2/ChoijinLama/ChoijinLama%20(9%20of%2011).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/2/ChoijinLama/ChoijinLama%20(10%20of%2011).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/2/ChoijinLama/ChoijinLama%20(11%20of%2011).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/2/ChoijinLama/ChoijinLama%20(1%20of%2011).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/2/ChoijinLama/q (1 of 1).jpg",
  ];

  bool showYoutubePlayer = false;

  @override
  void initState() {
    super.initState();
    _youtubeController = YoutubePlayerController(
      initialVideoId: 'JdlHV9__7Z0', // Replace with your YouTube video ID
      flags: const YoutubePlayerFlags(autoPlay: true, mute: false),
    );
  }

  @override
  void dispose() {
    _youtubeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    PageController controller_ = PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.3,
              child: showYoutubePlayer
                  ? YoutubePlayer(
                      controller: _youtubeController,
                      showVideoProgressIndicator: true,
                    )
                  : Stack(
                      alignment: Alignment.center,
                      fit: StackFit.expand,
                      children: [
                        Image.network(imageList[11], fit: BoxFit.cover),

                        SafeArea(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              onPressed: () {
                                if (showYoutubePlayer) {
                                  setState(() {
                                    showYoutubePlayer = false;
                                  });
                                } else {
                                  Navigator.pop(context);
                                }
                              },
                              icon: Icon(
                                showYoutubePlayer
                                    ? Icons.close
                                    : Icons.arrow_back_rounded,
                                size: 28,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: HexColor('#E8EFFF'),
                    ),
                    width: size.width,
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Choijin Lama Temple museum',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ReadMoreText(
                            'In the middle of the modern midtown, there is a complex of temples called Choijin Lama Temple, which is a popular tourist attraction as there is a museum inside for tourists to see.',
                            trimLines: 5,
                            textAlign: TextAlign.justify,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Show more',
                            trimExpandedText: 'Show less',
                            lessStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade500,
                            ),
                            moreStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.blue.shade500,
                            ),
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          double latitude = 47.914533;
                          double longitude = 106.9184398;
                          final String googleMapsLink =
                              "https://www.google.com/maps?q=$latitude,$longitude";
                          try {
                            await launch(googleMapsLink);
                          } catch (e) {
                            print("Error launching Google Maps: $e");
                          }
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.blue,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.arrow_circle_right_rounded,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Get Directions',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
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
            Stack(
              children: [
                SizedBox(
                  height: size.width * 0.7,
                  width: MediaQuery.of(context).size.width,
                  child: PageView.builder(
                    itemCount: imageList.length,
                    controller: controller_,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Image.network(
                            imageList[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: size.width * 0.62,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SmoothPageIndicator(
                      controller: controller_,
                      count: imageList.length,
                      effect: const ScrollingDotsEffect(
                        activeDotScale: 1,
                        activeStrokeWidth: 1,
                        fixedCenter: true,
                        activeDotColor: Colors.red,
                        dotColor: Colors.grey,
                        dotHeight: 10,
                        dotWidth: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
