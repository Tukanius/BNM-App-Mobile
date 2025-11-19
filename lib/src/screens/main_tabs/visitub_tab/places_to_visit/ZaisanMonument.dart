// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class NightStreetFood extends StatefulWidget {
  const NightStreetFood({super.key});

  @override
  State<NightStreetFood> createState() => _NightStreetFoodState();
}

class _NightStreetFoodState extends State<NightStreetFood> {
  late YoutubePlayerController _youtubeController;
  List<String> TopImage = [
    // "http://159.223.56.204:8000/asset/add/zaisan/ZaisanMonument-1.jpg",
    "http://159.223.56.204:8000/asset/add/zaisan/ZaisanMonument-2.jpg",
    "http://159.223.56.204:8000/asset/add/zaisan/ZaisanMonument-3.jpg",
    "http://159.223.56.204:8000/asset/add/zaisan/ZaisanMonument-4.jpg",
    "http://159.223.56.204:8000/asset/add/zaisan/ZaisanMonument-5.jpg",
  ];

  bool showYoutubePlayer = false;

  @override
  void initState() {
    super.initState();
    _youtubeController = YoutubePlayerController(
      initialVideoId: 'cPtSIPk2ETo',
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
                        'Zaisan Monument',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          double latitude = 47.88421;
                          double longitude = 106.91539;
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
                    'Standing on a hill overlooking Ulaanbaatar, the Zaisan Monument is both a historical tribute and a breathtaking viewpoint. Built by the Soviets to commemorate fallen soldiers of World War II, the monument features a massive circular mural depicting Mongolian and Soviet friendship, battle scenes, and revolutionary moments. Visitors who climb the 600+ steps to the top are rewarded with a stunning panoramic view of the entire city, stretching to the Tuul River and surrounding mountains. At sunrise or sunset, Zaisan is one of the most photogenic spots in Ulaanbaatar, offering a perfect blend of history and natural beauty. It’s a popular place for locals and tourists alike, whether for morning exercise, quiet reflection, or capturing a bird’s-eye view of Mongolia’s bustling capital.',
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
                                        'http://159.223.56.204:8000/asset/add/zaisan/Zaisan Monuments.jpg',
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
                  // Container(
                  //   decoration: BoxDecoration(
                  //     image: DecorationImage(
                  //       image: NetworkImage(
                  //         'http://159.223.56.204:8000/asset/add/zaisan/Zaisan Monuments.jpg',
                  //       ),
                  //       fit: BoxFit.cover,
                  //     ),
                  //     borderRadius: BorderRadius.circular(
                  //       15,
                  //     ),
                  //   ),
                  //   width: size.width,
                  //   height: size.height * 0.7,
                  //   child: Icon(
                  //     Icons.play_circle_fill,
                  //     color: Colors.white,
                  //     size: 40,
                  //   ),
                  // )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
