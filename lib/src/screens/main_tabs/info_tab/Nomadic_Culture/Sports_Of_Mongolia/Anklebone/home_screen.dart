// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Anklebone extends StatefulWidget {
  const Anklebone({super.key});

  @override
  State<Anklebone> createState() => _AnkleboneState();
}

class _AnkleboneState extends State<Anklebone> {
  List<String> images = [
    "http://159.223.56.204:8000/asset/anklethumb.jpg",
    "http://159.223.56.204:8000/asset/ankle1.jpg",
    "http://159.223.56.204:8000/asset/ankle2.jpg",
    "http://159.223.56.204:8000/asset/ankle3.jpg",
    "http://159.223.56.204:8000/asset/ankle4.jpg",
    "http://159.223.56.204:8000/asset/ankle5.jpg",
  ];

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
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(images[5]),
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
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.1),
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: MediaQuery.of(context).padding.top),
                          Align(
                            alignment: Alignment.topLeft,
                            child: IconButton(
                              onPressed: () => Navigator.pop(context),
                              icon: const Icon(Icons.arrow_back_rounded),
                              color: Colors.white,
                              iconSize: 25,
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
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ankle Bone Archery',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    'Ankle bone archery, known as "Shagai" in Mongolian, is one of the traditional games played in Mongolia, deeply rooted in the nomadic culture of the country. This game is part of a larger set of activities that utilize the ankle bones of sheep and goats, which are believed to carry luck and are used in various traditional games, including ankle bone shooting, racing, and flicking. Ankle bone archery, in particular, is a testament to the Mongolian people`s historical prowess in archery, a skill honed over centuries, notably for hunting and warfare.',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.justify,
                  ).animate().fade(delay: 800.ms),
                  const SizedBox(height: 15),
                  const Text(
                        'Historical Context',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  const Text(
                    'The history of ankle bone archery stretches back centuries, intertwining with Mongolia`s rich nomadic heritage. It reflects the importance of archery in Mongolian society, which was not only vital for survival but also a celebrated skill. The use of ankle bones, or "shagai," in games, is believed to date back to the Bronze Age, making it a practice deeply embedded in Mongolian tradition.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(images[0])),
                ),
                width: size.width,
                height: size.width,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                        'The Game',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  const Text(
                    'Ankle bone archery involves shooting arrows at targets made from rows of specially prepared ankle bones from sheep or goats. These targets are arranged on the ground at a certain distance from the archers. The game is traditionally played outdoors, on open ground, where participants and spectators gather during local festivals and national celebrations such as Naadam, which showcases Mongolia`s "Three Manly Games": archery, wrestling, and horse racing.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(images[1])),
                ),
                width: size.width,
                height: size.width,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                        'Equipment and Setup',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  const Text(
                    'Arrows and Bows:   The equipment used in ankle bone archery is similar to that used in traditional Mongolian archery, with some variations in bow size and arrow design to accommodate the specific needs of hitting small targets.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  const SizedBox(height: 10),
                  const Text(
                    'Ankle Bones:   The targets are made from sheep or goat ankle bones, which are cleaned, polished, and sometimes painted. These bones are arranged in several rows, and the number of bones and rows can vary based on regional rules or the level of competition.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  const SizedBox(height: 10),
                  const Text(
                    'Distance:   The distance from which archers shoot can vary, but it is typically set to challenge the skill and accuracy of the participants.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(images[2])),
                ),
                width: size.width,
                height: size.width,
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                        'Skills and Techniques',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  const Text(
                    'The key to success in ankle bone archery lies in the archer`s ability to accurately aim and shoot at the small targets from a distance. Precision, concentration, and mastery over the bow and arrow are crucial. Participants often train for years to hone their skills, reflecting the dedication to this traditional sport.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                        'Cultural Significance',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  const Text(
                    'Ankle bone archery is more than just a game in Mongolia; it`s a cultural practice that reinforces social bonds, traditions, and the transmission of cultural values across generations. It is a way for Mongolians to connect with their past, celebrate their heritage, and display their respect for the skills of their ancestors. The game is also imbued with a sense of spirituality and connection to the natural world, as the bones used are a reminder of the animals that sustain the nomadic lifestyle.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            const SizedBox(height: 15),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                        'Modern Day Practice',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  const Text(
                    'Today, ankle bone archery continues to be a popular activity during Mongolian festivals, with competitions held across the country. It attracts both young and old participants, serving as a living link to Mongolia`s nomadic past while contributing to the cultural tapestry of the nation. Efforts to preserve and promote traditional games like ankle bone archery are seen as essential to maintaining Mongolian cultural identity in the face of globalization. Ankle bone archery stands as a unique and fascinating aspect of Mongolia`s rich cultural heritage, offering insight into the country`s history, social structures, and the enduring legacy of its nomadic traditions.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}
