// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

class Egshiglen extends StatefulWidget {
  const Egshiglen({super.key});

  @override
  State<Egshiglen> createState() => _EgshiglenState();
}

class _EgshiglenState extends State<Egshiglen> {
  List<String> imageList = [
    "http://159.223.56.204:8000/asset/add/egshiglen/EgshiglenTop-1.jpg",
    "http://159.223.56.204:8000/asset/add/egshiglen/EgshiglenTop-2.jpg",
    "http://159.223.56.204:8000/asset/add/egshiglen/EgshiglenTop-3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    PageController controller_ = PageController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Music Instrument factory tour',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
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
                    height: size.width * 0.4,
                    // child: const Icon(
                    //   Icons.play_circle,
                    //   color: Colors.white,
                    //   size: 40,
                    // ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'About Egshiglen Music Instrument Factory',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Our city tour starts from the very center of our capital, the sukhbaatar square. It is surrounded by many historic buildings and statues.',
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                SizedBox(
                  height: size.width * 0.55,
                  width: MediaQuery.of(context).size.width,
                  child: PageView.builder(
                    itemCount: imageList.length,
                    controller: controller_,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 0),
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
                  height: size.width * 0.54,
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: GestureDetector(
                onTap: () async {
                  // Replace these latitude and longitude values with the actual values
                  double latitude = 47.94180;
                  double longitude = 106.91114;

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
                    color: const Color.fromARGB(255, 6, 143, 255),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: size.width * 0.4,
                  child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.map_outlined, color: Colors.white),
                        Text(
                          'Google maps',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
