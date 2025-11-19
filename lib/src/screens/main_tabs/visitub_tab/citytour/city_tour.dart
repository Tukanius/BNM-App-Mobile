import 'dart:ui';

import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/citytour/Egshiglen.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/citytour/day.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/citytour/day2.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/citytour/day3.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Cititour extends StatefulWidget {
  const Cititour({super.key});

  @override
  State<Cititour> createState() => _CititourState();
}

class _CititourState extends State<Cititour> {
  List<String> SecondImage = [
    "http://159.223.56.204:8000/asset/add/hun theatre.png",
    "http://159.223.56.204:8000/asset/add/sky resort.png",
    "http://159.223.56.204:8000/asset/add/tuuhsin.png",
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    PageController controller_ = PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Virtual city tour',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, size: 28, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Color.fromARGB(255, 154, 192, 221),
                              Color.fromARGB(255, 216, 237, 252),
                            ],
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        width: size.width,
                        height: size.height * 0.22,
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.only(start: 5),
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: size.width * 0.65,
                              height: size.height * 0.15,
                              child: const Text(
                                'The virtual Tour Guide Anar from BraveNewMongoliaTours is here to guide you through the most optimal itinerary to experience our Capital City.',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        width: size.width * 0.5,
                        height: size.width * 0.5,
                        right: size.height * 0.0001 - size.height * 0.05,
                        bottom: size.height * 0.0001 - size.height * 0.035,
                        child: const Image(
                          image: NetworkImage(
                            'http://159.223.56.204:8000/asset/me.png',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.symmetric(vertical: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Virtual city tour',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const DayScreen(),
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                        'http://159.223.56.204:8000/asset/Other/city_tour_new2.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  width: size.width * 0.30,
                                  height: size.height * 0.25,
                                  child: ClipRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 0,
                                        sigmaY: 0,
                                      ),
                                      child: Container(
                                        alignment: Alignment.topCenter,
                                        // width: size.width * 0.8,
                                        // height: size.height * 0.09,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8),
                                              child: Container(
                                                width: size.width * 0.25,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: Colors.white30,
                                                ),
                                                child: const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.all(
                                                        8,
                                                      ),
                                                      child: Text(
                                                        'Day 1',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Day2Screen(),
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                        'http://159.223.56.204:8000/asset/Other/city_tour_new.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  width: size.width * 0.30,
                                  height: size.height * 0.25,
                                  child: ClipRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 0,
                                        sigmaY: 0,
                                      ),
                                      child: Container(
                                        alignment: Alignment.topCenter,
                                        // width: size.width * 0.8,
                                        // height: size.height * 0.09,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8),
                                              child: Container(
                                                width: size.width * 0.25,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: Colors.white30,
                                                ),
                                                child: const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.all(
                                                        8,
                                                      ),
                                                      child: Text(
                                                        'Day 2',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Day3Screen(),
                                  ),
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: NetworkImage(
                                        'http://159.223.56.204:8000/asset/Other/telej_new_1.jpg',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  width: size.width * 0.30,
                                  height: size.height * 0.25,
                                  child: ClipRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 0,
                                        sigmaY: 0,
                                      ),
                                      child: Container(
                                        alignment: Alignment.topCenter,
                                        // width: size.width * 0.8,
                                        // height: size.height * 0.09,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.all(8),
                                              child: Container(
                                                width: size.width * 0.25,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                  color: Colors.white30,
                                                ),
                                                child: const Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.all(
                                                        8,
                                                      ),
                                                      child: Text(
                                                        'Day 3',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
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
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Egshiglen Music Instrument Factory Tour',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Egshiglen(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            'http://159.223.56.204:8000/asset/add/egshiglen/EgshiglenThumb.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: size.width,
                      height: size.width * 0.35,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Stack(
                    children: [
                      SizedBox(
                        height: size.width * 0.5,
                        width: MediaQuery.of(context).size.width,
                        child: PageView.builder(
                          itemCount: SecondImage.length,
                          controller: controller_,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 0,
                              ),
                              child: Container(
                                alignment: Alignment.bottomLeft,
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(SecondImage[index]),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(15),
                                    bottomRight: Radius.circular(15),
                                    topLeft: Radius.circular(15),
                                    topRight: Radius.circular(15),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: size.width * 0.49,
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: SmoothPageIndicator(
                            controller: controller_,
                            count: SecondImage.length,
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
                ],
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.symmetric(
            //     horizontal: 15,
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         'Gobi factory tour',
            //         style: TextStyle(
            //           fontSize: 18,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       SizedBox(
            //         height: 10,
            //       ),
            //       GestureDetector(
            //         onTap: () {
            //           showDialog(context: context, builder: (context) => Coming_Soon(),);
            //         },
            //         child: Container(
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(
            //               10,
            //             ),
            //             image: DecorationImage(
            //                 image: NetworkImage(
            //                     'https://www.mogol.mn/images/gallery/0/eb68a166ca6617a13fd11c4f18a9dfab.JPG'),
            //                 fit: BoxFit.cover),
            //           ),
            //           width: size.width,
            //           height: size.width * 0.45,
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // // Stack(
            // //   children: [
            // //     SizedBox(
            // //       height: size.height * 0.24,
            // //       width: size.width,
            // //       child: PageView.builder(
            // //           controller: _controller,
            // //           clipBehavior: Clip.antiAliasWithSaveLayer,
            // //           itemCount: 5,
            // //           itemBuilder: (context, index) => Padding(
            // //                 padding: const EdgeInsets.symmetric(horizontal: 15),
            // //                 child: Container(
            // //                   width: size.width,
            // //                   decoration: BoxDecoration(
            // //                     borderRadius: BorderRadius.circular(15),
            // //                     color: Colors.grey.shade300,
            // //                     image: DecorationImage(
            // //                         image: NetworkImage(""), fit: BoxFit.cover),
            // //                   ),
            // //                 ),
            // //               )),
            // //     ),
            // //     SizedBox(
            // //       width: size.width,
            // //       height: size.width * 0.45,
            // //       child: Align(
            // //         alignment: Alignment.bottomCenter,
            // //         child: SmoothPageIndicator(
            // //           controller: _controller,
            // //           count: 5,
            // //           effect: WormEffect(
            // //               activeDotColor: Colors.red,
            // //               dotColor: Color.fromARGB(255, 109, 109, 109),
            // //               dotHeight: 8,
            // //               dotWidth: 8),
            // //         ),
            // //       ),
            // //     )
            // //   ],
            // // ),
            // SizedBox(
            //   height: 15,
            // ),
            // Padding(
            //   padding: EdgeInsets.symmetric(
            //     horizontal: 15,
            //   ),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         'Contact Brave new Mongolia',
            //         style: TextStyle(
            //           fontSize: 18,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            //       Container(
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(
            //             10,
            //           ),
            //           color: Colors.blue.shade100,
            //         ),
            //         width: size.width,
            //         height: size.width * 0.28,
            //         child: Padding(
            //             padding: EdgeInsets.symmetric(
            //               horizontal: 10,
            //               vertical: 10,
            //             ),
            //             child: Stack(
            //               children: [
            //                 Row(
            //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                   children: [
            //                     GestureDetector(
            //                       onTap: () {
            //                         showDialog(context: context, builder: (context) => Coming_Soon(),);
            //                       },
            //                       child: Container(
            //                         decoration: BoxDecoration(
            //                             borderRadius: BorderRadius.circular(10),
            //                             color: Colors.white),
            //                         width: size.width * 0.28,
            //                         height: size.height,
            //                         child: Icon(
            //                           Icons.video_collection_sharp,
            //                           size: 30,
            //                           color: Colors.blue.shade500,
            //                         ),
            //                       ),
            //                     ),
            //                     GestureDetector(
            //                       onTap: () {
            //                         showDialog(context: context, builder: (context) => Coming_Soon(),);
            //                       },
            //                       child: Container(
            //                         decoration: BoxDecoration(
            //                             borderRadius: BorderRadius.circular(10),
            //                             color: Colors.white),
            //                         width: size.width * 0.28,
            //                         height: size.height,
            //                         child: Icon(
            //                           Icons.phone,
            //                           size: 30,
            //                           color: Colors.blue.shade500,
            //                         ),
            //                       ),
            //                     ),
            //                     GestureDetector(
            //                       onTap: () {
            //                         showDialog(context: context, builder: (context) => Coming_Soon(),);
            //                       },
            //                       child: Container(
            //                         decoration: BoxDecoration(
            //                             borderRadius: BorderRadius.circular(10),
            //                             color: Colors.white),
            //                         width: size.width * 0.28,
            //                         height: size.height,
            //                         child: Icon(
            //                           Icons.blur_circular_sharp,
            //                           size: 30,
            //                           color: Colors.blue.shade500,
            //                         ),
            //                       ),
            //                     ),
            //                   ],
            //                 ),
            //               ],
            //             )),
            //       ),
            //     ],
            //   ),
            // ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
