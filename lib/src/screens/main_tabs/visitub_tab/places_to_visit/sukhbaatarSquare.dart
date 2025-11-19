// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class SukhbaatarSquare extends StatefulWidget {
  const SukhbaatarSquare({super.key});

  @override
  State<SukhbaatarSquare> createState() => _SukhbaatarSquareState();
}

class _SukhbaatarSquareState extends State<SukhbaatarSquare> {
  late YoutubePlayerController _youtubeController;
  List<String> TopImage = [
    "http://159.223.56.204:8000/asset/add/sukhbaatarSquare/sukhbaatarSquae-1.jpg",
    "http://159.223.56.204:8000/asset/add/sukhbaatarSquare/sukhbaatarSquae-2.jpg",
    "http://159.223.56.204:8000/asset/add/sukhbaatarSquare/sukhbaatarSquae-3.jpg",
    "http://159.223.56.204:8000/asset/add/sukhbaatarSquare/sukhbaatarSquae-4.jpg",
    "http://159.223.56.204:8000/asset/add/sukhbaatarSquare/sukhbaatarSquae-5.jpg",
    "http://159.223.56.204:8000/asset/add/sukhbaatarSquare/sukhbaatarSquae-6.jpg",
    "http://159.223.56.204:8000/asset/add/sukhbaatarSquare/sukhbaatarSquae-7.jpg",
  ];

  bool showYoutubePlayer = false;

  @override
  void initState() {
    super.initState();
    _youtubeController = YoutubePlayerController(
      initialVideoId: 'H4Z8B7JzK_I',
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
            Stack(
              children: [
                Stack(
                  children: [
                    SizedBox(
                      height: size.height * 0.3,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          SizedBox(
                            height: size.height * 0.3,
                            width: MediaQuery.of(context).size.width,
                            child: PageView.builder(
                              itemCount: TopImage.length,
                              controller: controller_,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 0,
                                  ),
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(
                                      vertical: 0,
                                    ),
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      // color: color[index],
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(1),
                                        bottomRight: Radius.circular(1),
                                      ),
                                    ),
                                    child: Image.network(
                                      TopImage[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.29,
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: SmoothPageIndicator(
                                controller: controller_,
                                count: TopImage.length,
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
                          SafeArea(
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(
                                Icons.arrow_back_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      // Container(
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.only(
                      //         bottomLeft: Radius.circular(10),
                      //         bottomRight: Radius.circular(10),
                      //       ),
                      //       image: DecorationImage(
                      //           image: NetworkImage(
                      //               'http://159.223.56.204:8000/asset/Commercial/Hotel/Tuushin/TuushinE (2 of 9).jpg'),
                      //           fit: BoxFit.cover)),
                      // )
                    ),
                    SafeArea(
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(Icons.arrow_back_rounded),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Sukhbaatar square',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          double latitude = 47.91913;
                          double longitude = 106.91755;
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
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              children: [
                                Icon(Icons.map_outlined, color: Colors.white),
                                SizedBox(width: 5),
                                Text(
                                  'Google maps',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    textAlign: TextAlign.justify,
                    'The very center of Mongolian capital city, Central square where Mongolians declared independence in 1921. The square was built and named after revolutionary hero Damdin Sukhbaatar in 1951.',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      width: size.width,
                      height: size.height * 0.7,
                      child: showYoutubePlayer
                          ? YoutubePlayer(
                              controller: _youtubeController,
                              showVideoProgressIndicator: true,
                            )
                          : Stack(
                              alignment: Alignment.center,
                              fit: StackFit.expand,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                        'http://159.223.56.204:8000/asset/add/sukhbaatarSquare/sUKHBAATAR SQUARE.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  width: size.width,
                                  height: size.height * 0.25,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        showYoutubePlayer = true;
                                      });
                                    },
                                    child: Icon(
                                      Icons.play_circle,
                                      size: 50,
                                      color: Colors.white.withOpacity(0.7),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
