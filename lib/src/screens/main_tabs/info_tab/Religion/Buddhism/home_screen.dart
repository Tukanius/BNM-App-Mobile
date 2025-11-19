// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Buddhism extends StatefulWidget {
  const Buddhism({super.key});

  @override
  State<Buddhism> createState() => _BuddhismState();
}

class _BuddhismState extends State<Buddhism> {
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
                    'http://159.223.56.204:8000/asset/budd6.jpg',
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
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                        'Buddhism',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                      .animate()
                      .flipV(delay: 500.ms)
                      .move(delay: 300.ms, duration: 600.ms),
                  const SizedBox(height: 5),
                  const Text(
                    'Buddhism has a long and significant history in Mongolia. The country is association with Buddhism dates back to the time of the Mongol Empire in the 13th century. During this period, Mongolia was ruled by Genghis Khan and his successors, who were tolerant of different religious beliefs, including Buddhism.Initially, Buddhism in Mongolia was influenced by Tibetan Buddhism, particularly the Gelug school, also known as the Yellow Hat sect. In the 16th century, Altan Khan, the ruler of the Tümed Mongols, declared Buddhism as the state religion, further solidifying its prominence in Mongolian society.Over the centuries, Buddhism played a crucial role in shaping Mongolian culture, art, and way of life. Monasteries, known as "kharas" were established across the country, becoming centers of spiritual and intellectual activities. These monasteries housed a large number of monks and served as repositories of religious texts and teachings.However, during the 20th century, Mongolia underwent significant political and social changes. In 1924, the country experienced a communist revolution, and the Mongolian People is Republic was established. As part of the communist ideology, the government implemented policies that suppressed religious practices, including Buddhism. Many monasteries were destroyed, and Buddhist monks were persecuted, leading to a decline in Buddhism is influence.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
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
                            'http://159.223.56.204:8000/asset/budd5.jpg',
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
                            'http://159.223.56.204:8000/asset/budd4.jpg',
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
                            'http://159.223.56.204:8000/asset/budd3.jpg',
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Following the democratic revolution in 1990 and the subsequent end of communist rule, Mongolia experienced a revival of Buddhism. Since then, there has been a resurgence of interest in Buddhism among the Mongolian population. Monasteries that were destroyed during the communist era have been restored, and new ones have been constructed.Today, Buddhism remains an important aspect of Mongolian culture and spirituality. The Gandantegchinlen Monastery in the capital city of Ulaanbaatar is one of the largest and most significant monastic institutions in Mongolia. It serves as a center for religious activities, education, and cultural preservation.Mongolian Buddhism is primarily influenced by Tibetan Buddhism, particularly the Gelug and Kagyu schools. The Dalai Lama, the spiritual leader of Tibetan Buddhism, has visited Mongolia several times and has a significant following in the country.Overall, Buddhism continues to play a vital role in Mongolia, both as a religious tradition and as a cultural heritage that is deeply intertwined with the country is history and identity.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
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
                            'http://159.223.56.204:8000/asset/budd2.jpg',
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
                            'http://159.223.56.204:8000/asset/budd1.jpg',
                          ),
                          fit: BoxFit.cover,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     width: 250,
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20),
                  //         image: DecorationImage(
                  //             image: NetworkImage(
                  //                 'http://159.223.56.204:8000/asset/shamanism8.jpg'),
                  //             fit: BoxFit.cover,
                  //             filterQuality: FilterQuality.high)),
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Container(
                  //     width: 250,
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(20),
                  //         image: DecorationImage(
                  //             image: NetworkImage(
                  //                 'http://159.223.56.204:8000/asset/shamanism9.jpg'),
                  //             fit: BoxFit.cover,
                  //             filterQuality: FilterQuality.high)),
                  //   ),
                  // ),
                ],
              ),
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
