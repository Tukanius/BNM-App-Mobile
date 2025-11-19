import 'dart:ui';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/citytour/city_tour.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/infocenter/home_screen.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/museum/museum.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/places_to_visit/places_to_visit.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/statues/home_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// ---------- Шинэ Page импорт хийх ----------

class VisitubPage extends StatefulWidget {
  const VisitubPage({super.key});

  @override
  State<VisitubPage> createState() => _VisitubPageState();
}

class _VisitubPageState extends State<VisitubPage> {
  final List<String> imgList = [
    'assets/images/ads1.jpg',
    'assets/images/ads2.jpg',
    'assets/images/ads3.jpg',
  ];

  final double boxHeight = 110; // бүх box-н ижил өндөр

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    // final controller_ = PageController();

    return Scaffold(
      backgroundColor: HexColor('#F2F5F8'),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          children: [
            // Header зураг
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: size.width,
                  height: size.height * 0.3,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'http://159.223.56.204:8000/asset/zadgai/Ulaanbaatar/Ulaanbaatar-2.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: size.width,
                  height: size.width * 0.06,
                  decoration: BoxDecoration(
                    color: HexColor('#F2F5F8'),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            // Top 4 box
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildBox(
                        size,
                        title: 'Places to Visit',
                        image: 'http://159.223.56.204:8000/asset/PTV.png',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Place_to_visit(),
                            ),
                          );
                        },
                      ),
                      _buildBox(
                        size,
                        title: 'Museums',
                        image: 'http://159.223.56.204:8000/asset/Museums.png',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Museums(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildBox(
                        size,
                        title: 'Statues & Monuments',
                        image: 'http://159.223.56.204:8000/asset/Statue.png',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const StatuesMonuments(),
                            ),
                          );
                        },
                      ),
                      _buildBox(
                        size,
                        title: 'Information Centers',
                        image: 'http://159.223.56.204:8000/asset/reli.png',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Religious(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // Virtual City Tour
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: HexColor('#013B7D'),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width,
                        height: size.width * 0.55,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            Container(
                              alignment: Alignment.bottomLeft,
                              width: size.width * 0.6,
                              height: size.width * 0.55,
                              child: const Image(
                                image: NetworkImage(
                                  'http://159.223.56.204:8000/asset/add/Character png/3 860969300.png',
                                ),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.20),
                        child: SizedBox(
                          width: size.width * 0.45,
                          height: size.width * 0.32,
                          child: const Text(
                            'The virtual Tour Guide Anar from BNM Tours is here to guide you through the most optimal itinerary to experience our Capital City.',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Cititour(),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.white),
                        ),
                        width: size.width,
                        height: size.width * 0.15,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 3, sigmaY: 2),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Container(
                                alignment: Alignment.center,
                                child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Virtual City Tour',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w900,
                                        fontSize: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Icon(
                                      Icons.arrow_right,
                                      color: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 15),

            // Carousel
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 0.9,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                enlargeFactor: 0.15,
                aspectRatio: 16 / 9,
                autoPlay: true,
              ),
              items: imgList.map((item) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.asset(item, fit: BoxFit.cover),
                  ),
                );
              }).toList(),
            ),

            // SizedBox(
            //   height: size.width * 0.5,
            //   child: PageView.builder(
            //     controller: PageController(),
            //     itemCount: SecondImage.length,
            //     itemBuilder: (context, index) {
            //       return Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 15),
            //         child: Container(
            //           clipBehavior: Clip.antiAlias,
            //           decoration: BoxDecoration(
            //             borderRadius: BorderRadius.circular(15),
            //             image: DecorationImage(
            //               image: NetworkImage(SecondImage[index]),
            //               fit: BoxFit.cover,
            //             ),
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
            const SizedBox(height: 15),

            // History box
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 15),
            //   child: GestureDetector(
            //     onTap: () => Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => const History()),
            //     ),
            //     child: Container(
            //       decoration: BoxDecoration(
            //         color: Colors.white,
            //         borderRadius: BorderRadius.circular(15),
            //       ),
            //       width: size.width,
            //       height: size.width * 0.2,
            //       child: Padding(
            //         padding: const EdgeInsets.symmetric(horizontal: 15),
            //         child: Row(
            //           children: [
            //             const Icon(
            //               Icons.newspaper_rounded,
            //               color: Color.fromARGB(255, 189, 52, 42),
            //             ),
            //             const SizedBox(width: 10),
            //             const Text(
            //               'History',
            //               style: TextStyle(
            //                 fontWeight: FontWeight.w900,
            //                 fontSize: 18,
            //               ),
            //             ),
            //             Expanded(child: Container()),
            //             const Icon(Icons.arrow_right_rounded),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            const SizedBox(height: 150),
          ],
        ),
      ),
    );
  }

  Widget _buildBox(
    Size size, {
    required String title,
    required String image,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.45,
        height: boxHeight,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.shade300,
          //     offset: const Offset(2.5, 2.5),
          //   ),
          // ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(image, width: 32, height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Icon(Icons.navigate_next_rounded),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
