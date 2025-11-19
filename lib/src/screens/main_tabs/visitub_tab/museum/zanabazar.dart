// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class ZanabazarMuseum extends StatefulWidget {
  const ZanabazarMuseum({super.key});

  @override
  State<ZanabazarMuseum> createState() => _ZanabazarMuseumState();
}

class _ZanabazarMuseumState extends State<ZanabazarMuseum> {
  List<String> imageList = [
    "http://159.223.56.204:8000/asset/Ub/Museums/3/ZanabazarMuseum/ZanabazarMuseum%20(1%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/3/ZanabazarMuseum/ZanabazarMuseum%20(2%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/3/ZanabazarMuseum/ZanabazarMuseum%20(3%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/3/ZanabazarMuseum/ZanabazarMuseum%20(4%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/3/ZanabazarMuseum/ZanabazarMuseum%20(5%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/3/ZanabazarMuseum/ZanabazarMuseum%20(6%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/3/ZanabazarMuseum/ZanabazarMuseum%20(7%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/3/ZanabazarMuseum/ZanabazarMuseum%20(8%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/3/ZanabazarMuseum/ZanabazarMuseum%20(9%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/3/ZanabazarMuseum/ZanabazarMuseum%20(10%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/3/ZanabazarMuseum/ZanabazarMuseum%20(11%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/3/ZanabazarMuseum/ZanabazarMuseum%20(12%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/3/ZanabazarMuseum/ZanabazarMuseum%20(1%20of%201).jpg",
  ];

  List data = [
    [
      "Zanabazar Museum",
      "Journey into the profound legacy of Zanabazar at the Zanabazar Museum in Ulaanbaatar. Named after the revered religious leader, artist, and scholar, this museum pays homage to one of Mongolia's most influential figures. Explore a curated collection of Zanabazar's artistic masterpieces, religious artifacts, and manuscripts, providing insight into his pivotal role in shaping Mongolian Buddhism and culture. The museum offers a contemplative space, inviting visitors to connect with the spiritual and artistic dimensions of Zanabazar's life. Immerse yourself in the rich tapestry of Mongolian heritage as you delve into the enlightened world of Zanabazar at this cultural gem in the heart of Ulaanbaatar.",
    ],
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
            SizedBox(
              width: size.width,
              height: size.height * 0.3,
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  Image.network(imageList[12], fit: BoxFit.cover),

                  SafeArea(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back_rounded,
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
                          Text(
                            data[0][0],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          ReadMoreText(
                            data[0][1],
                            trimLines: 5,
                            textAlign: TextAlign.justify,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Showmore',
                            trimExpandedText: 'Showless',
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
                          // Replace these latitude and longitude values with the actual values
                          double latitude = 47.92035;
                          double longitude = 106.90927;

                          // Format the Google Maps URL with the specified latitude and longitude
                          final String googleMapsLink =
                              "https://www.google.com/maps?q=$latitude,$longitude";

                          try {
                            await launch(googleMapsLink);
                          } catch (e) {
                            print('Error launching Google Maps: $e');
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
