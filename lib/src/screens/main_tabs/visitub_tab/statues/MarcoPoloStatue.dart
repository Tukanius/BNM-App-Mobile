import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class Marcopolostatue extends StatefulWidget {
  const Marcopolostatue({super.key});

  @override
  State<Marcopolostatue> createState() => _MarcopolostatueState();
}

class _MarcopolostatueState extends State<Marcopolostatue> {
  List<String> TopImage = [
    "http://159.223.56.204:8000/asset/add/marco/marco polo-1.jpg",
    "http://159.223.56.204:8000/asset/add/marco/marco polo-2.jpg",
    "http://159.223.56.204:8000/asset/add/marco/marco polo-3.jpg",
    "http://159.223.56.204:8000/asset/add/marco/marco polo-4.jpg",
  ];
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
                      height: size.height * 0.55,
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          SizedBox(
                            height: size.height * 0.55,
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
                            height: size.height * 0.54,
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
                        'Marco Polo Statue',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          double latitude = 47.91735;
                          double longitude = 106.92026;
                          final String googleMapsLink =
                              "https://www.google.com/maps?q=$latitude,$longitude";
                          try {
                            // ignore: deprecated_member_use
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
                    'In downtown Ulaanbaatar, near Sukhbaatar Square, stands a statue commemorating the famed Venetian explorer Marco Polo. This monument pays tribute to Polo`s historical journey through Asia and his accounts of Mongolia, which introduced much of the Western world to the region`s rich culture and history. The statue serves as a reminder of the longstanding connections between East and West and is a point of interest for those intrigued by historical explorations. These landmarks and initiatives not only enhance the cultural and social fabric of Ulaanbaatar but also offer visitors a glimpse into the city`s evolving landscape and historical significance.',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 20),
                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Colors.grey,
                  //     borderRadius: BorderRadius.circular(
                  //       15,
                  //     ),
                  //   ),
                  //   width: size.width,
                  //   height: size.height * 0.7,
                  //   child: const Icon(
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
