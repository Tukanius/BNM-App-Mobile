import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class UlaanbaatarCityMuseum extends StatefulWidget {
  const UlaanbaatarCityMuseum({super.key});

  @override
  State<UlaanbaatarCityMuseum> createState() => _UlaanbaatarCityMuseumState();
}

class _UlaanbaatarCityMuseumState extends State<UlaanbaatarCityMuseum> {
  List<String> imageList = [
    "http://159.223.56.204:8000/asset/Ub/Museums/2/UlaanbaatarCityMuseum/UlaanbaatarCityMuseum%20(3%20of%207).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/2/UlaanbaatarCityMuseum/UlaanbaatarCityMuseum%20(1%20of%207).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/2/UlaanbaatarCityMuseum/UlaanbaatarCityMuseum%20(2%20of%207).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/2/UlaanbaatarCityMuseum/UlaanbaatarCityMuseum%20(4%20of%207).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/2/UlaanbaatarCityMuseum/UlaanbaatarCityMuseum%20(5%20of%207).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/2/UlaanbaatarCityMuseum/UlaanbaatarCityMuseum%20(6%20of%207).jpg",
    "http://159.223.56.204:8000/asset/Ub/Museums/2/UlaanbaatarCityMuseum/UlaanbaatarCityMuseum%20(7%20of%207).jpg",
  ];

  List data = [
    [
      "Ulaanbaatar City Museum",
      "Discover the beating heart of Ulaanbaatar at the Ulaanbaatar City Museum, an immersive exploration into the dynamic history and cultural evolution of Mongolia's capital. Located in the bustling urban center, this museum offers a captivating journey through time, featuring meticulously curated exhibits that showcase the city's transformation from its nomadic roots to the vibrant metropolis it is today. Delve into the diverse narratives of Ulaanbaatar's past, adorned with artifacts, photographs, and interactive displays that breathe life into the tales of its people. The Ulaanbaatar City Museum invites you to connect with the city's essence, fostering a deep appreciation for its unique character and the ever-evolving spirit that defines Mongolia's capital.",
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
                  Image.network(imageList[6], fit: BoxFit.cover),

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
                          double latitude = 47.91833;
                          double longitude = 106.93605;

                          // Format the Google Maps URL with the specified latitude and longitude
                          final String googleMapsLink =
                              "https://www.google.com/maps?q=$latitude,$longitude";

                          try {
                            // ignore: deprecated_member_use
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
