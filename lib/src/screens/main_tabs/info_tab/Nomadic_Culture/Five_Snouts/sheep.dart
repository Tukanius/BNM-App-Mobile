// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Sheep extends StatelessWidget {
  const Sheep({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                  image: NetworkImage(
                    'http://159.223.56.204:8000/asset/Other/sheep2.jpg',
                  ),
                ),
              ),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black,
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.1),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: MediaQuery.of(context).padding.top),
                          Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(Icons.arrow_back_sharp),
                              iconSize: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Sheep',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "Mongolian sheep, an integral part of the country's agricultural landscape, have been domesticated and cherished by the nomadic herders for centuries. With their distinctive features and ability to thrive in the challenging Mongolian environment, these sheep play a pivotal role in the livelihood and culture of the Mongolian people. One of the most remarkable features of Mongolian sheep is their exceptionally thick and warm wool. The sheep's wool acts as a natural shield against the extreme temperatures of Mongolia, insulating them from the freezing winters and helping them withstand the scorching summers. The fine and durable wool is highly valued and is used to produce traditional Mongolian clothing such as the deel, a robe-like garment worn by both men and women. The nomadic herders have mastered the art of shearing the sheep, an essential skill passed down through generations. Shearing is typically done in the spring when the weather becomes milder, and the sheep no longer need their heavy winter coats. The process is not only a means of obtaining wool for clothing and blankets but also an opportunity for social gatherings and celebrations within the community. ",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'http://159.223.56.204:8000/asset/FLsheep.jpg',
                          ),
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'http://159.223.56.204:8000/asset/Other/Sheep1.jpg',
                          ),
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mongolian sheep are hardy and resourceful animals, well-suited to the vast steppes and the nomadic lifestyle. They are adaptable grazers, able to feed on sparse vegetation found in the open grasslands. Their ability to subsist on limited resources makes them ideal for a nomadic existence, as herders can move them to new pastures to ensure sustainable grazing and prevent overgrazing. These sheep are also an essential part of Mongolia's rural economy. Apart from wool, they provide meat and milk, serving as a vital source of nutrition for the nomadic families. Mongolian sheep's milk is used to make traditional dairy products such as airag (fermented mare's milk) and aaruul (dried curds), which are widely consumed by the locals. However, like many other aspects of traditional nomadic life, Mongolian sheep herding faces challenges. Climate change, desertification, and overgrazing are among the concerns affecting the sustainability of pastoral practices. Efforts are being made to implement sustainable grazing management techniques and educate herders about preserving the delicate balance between the sheep population and the available grazing resources.",
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ),
                ],
              ),
            ),
            // Container(
            //   height: 250,
            //   child: ListView(
            //     scrollDirection: Axis.horizontal,
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Container(
            //           width: 250,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               image: DecorationImage(
            //                   image: NetworkImage(
            //                       'http://159.223.56.204:8000/asset/cattle2.jpg'),
            //                   fit: BoxFit.cover,
            //                   filterQuality: FilterQuality.high)),
            //         ),
            //       ),
            //       Padding(
            //         padding: const EdgeInsets.all(8.0),
            //         child: Container(
            //           width: 250,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(20),
            //               image: DecorationImage(
            //                   image: NetworkImage(
            //                       'http://159.223.56.204:8000/asset/cattle3.jpg'),
            //                   fit: BoxFit.cover,
            //                   filterQuality: FilterQuality.high)),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(
            //   height: 5,
            // )
          ],
        ),
      ),
    );
  }
}
