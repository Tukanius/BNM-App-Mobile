// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class BogdKhan extends StatefulWidget {
  const BogdKhan({super.key});

  @override
  State<BogdKhan> createState() => _BogdKhanState();
}

class _BogdKhanState extends State<BogdKhan> {
  List<String> imageList = [
    "http://159.223.56.204:8000/asset/Ub/Museums/1/BogdKhaaniiMuseum/BogdKhaanMuseum%20(2%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/1/BogdKhaaniiMuseum/BogdKhaanMuseum (1 of 1).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/1/BogdKhaaniiMuseum/BogdKhaanMuseum%20(1%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/1/BogdKhaaniiMuseum/BogdKhaanMuseum%20(3%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/1/BogdKhaaniiMuseum/BogdKhaanMuseum%20(4%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/1/BogdKhaaniiMuseum/BogdKhaanMuseum%20(5%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/1/BogdKhaaniiMuseum/BogdKhaanMuseum%20(6%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/1/BogdKhaaniiMuseum/BogdKhaanMuseum%20(7%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/1/BogdKhaaniiMuseum/BogdKhaanMuseum%20(8%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/1/BogdKhaaniiMuseum/BogdKhaanMuseum%20(9%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/1/BogdKhaaniiMuseum/BogdKhaanMuseum%20(10%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/1/BogdKhaaniiMuseum/BogdKhaanMuseum%20(11%20of%2012).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/1/BogdKhaaniiMuseum/BogdKhaanMuseum%20(12%20of%2012).jpg",
  ];

  List data = [
    [
      "Bogd khaan Museum",
      "2km north of Zaisan, is the Winter palace of Bogd khan former spiritual leader of Mongolia. The palace is the only one left of the originally four residences of the Bogd Khan and alongside it is the oldest museum. It is also considered one of the biggest collections in Mongolia.",
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
                  Image.network(imageList[1], fit: BoxFit.cover),

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
                          double latitude = 47.8973454;
                          double longitude = 106.9070794;

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
