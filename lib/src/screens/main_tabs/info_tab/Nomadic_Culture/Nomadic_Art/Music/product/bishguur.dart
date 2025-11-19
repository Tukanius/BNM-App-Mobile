// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Bishguur extends StatefulWidget {
  const Bishguur({super.key});

  @override
  State<Bishguur> createState() => _BishguurState();
}

class _BishguurState extends State<Bishguur> {
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
                  image: NetworkImage(
                    'http://159.223.56.204:8000/asset/images/ulaanbaatar history/bishguur-1.jpg',
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
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'The Bishguur, a traditional Mongolian horn, is a wind instrument revered for its deep, resonant sound that echoes the vast expanses of Mongolia`s landscapes. Crafted from wood or metal, the Bishguur plays a vital role in Mongolia`s musical traditions, particularly in ceremonial and military contexts, symbolizing strength, courage, and unity among the Mongolian people.',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.justify,
                  ).animate().fade(delay: 800.ms),
                  const SizedBox(height: 20),
                  const Text(
                        'Historical Background',
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
                    'Historically, the Bishguur was integral to the Mongolian military, used as a means of communication across the wide-open steppes. Its powerful sound could relay messages over long distances, coordinating movements and signaling the start and end of engagements. Beyond its martial use, the Bishguur also found its place in various ceremonies and cultural gatherings, evolving into an emblem of Mongolian identity and communal spirit.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),

            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                        'Design and Construction',
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
                    'The Bishguur typically features a long, curved body that culminates in a flared bell, designed to project its sound far and wide. The curvature and length of the instrument play a crucial role in creating its characteristic deep tones that can vary in pitch depending on the instrument`s size and the material used. Artisans often embellish the Bishguur with intricate designs and motifs that reflect Mongolian artistry and cultural symbols, adding a layer of visual appeal to its auditory grandeur.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),

            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                        'Musical Characteristics',
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
                    'The music of the Bishguur is characterized by its rich, sonorous quality, capable of producing a range of sounds from solemn, deep notes to more vibrant, melodic passages. The instrument`s sound is often described as stirring and majestic, capable of invoking the vastness of the Mongolian steppe and the indomitable spirit of its people. Players employ a variety of breathing techniques and embouchure adjustments to control the pitch and tone, showcasing the skill and artistry required to master the Bishguur.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),

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
                    'In Mongolian culture, the Bishguur is more than an instrument; it is a symbol of the enduring strength and unity of the Mongolian people. It features prominently in national celebrations, ceremonies, and festivals, such as the Naadam Festival, where it accompanies traditional dances, songs, and athletic competitions. The Bishguur`s sound is a call to gather, celebrate, and remember the rich history and cultural heritage of Mongolia.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),

            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                        'Contemporary Role',
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
                    'Today, the Bishguur continues to be celebrated and preserved within Mongolia, finding new life in contemporary musical compositions that blend traditional and modern elements. It is also an ambassador of Mongolian culture on the international stage, captivating audiences worldwide with its powerful sound and deep cultural resonance. Efforts to teach and learn the Bishguur in music schools across Mongolia ensure that this ancient instrument will continue to be a vital part of Mongolia`s cultural expression for generations to come. In summary, the Bishguur stands as a testament to Mongolia`s rich musical tradition and its deep connections to the natural world, history, and the collective spirit of its people. Its commanding presence in Mongolian music and culture underscores the instrument`s significance as a bearer of identity, tradition, and unity.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      color: Colors.white,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_rounded,
                              color: Colors.black,
                              size: 20,
                            ),
                            Text(
                              'Back to Music',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // GestureDetector(
                  //   onTap: () =>
                  //       Navigator.popAndPushNamed(context, '/shamandrum'),
                  //   child: Container(
                  //     color: Colors.white,
                  //     child: const Padding(
                  //       padding: EdgeInsets.all(8.0),
                  //       child: Row(
                  //         children: [
                  //           Text(
                  //             'Continue reading Shaman Drum',
                  //             style: TextStyle(
                  //               fontWeight: FontWeight.bold,
                  //               fontSize: 12,
                  //             ),
                  //           ),
                  //           Icon(
                  //             Icons.arrow_forward_rounded,
                  //             color: Colors.black,
                  //             size: 20,
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            // Align(
            //   alignment: Alignment.bottomRight,
            //   child: Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 15),
            //     child: GestureDetector(
            //       onTap: () => Navigator.push(context, PageTransition(child: ShamanDrum(), type: PageTransitionType.fade, duration: 900.ms)),
            //       // Navigator.push(context, MaterialPageRoute(builder: (context) => MNEmpire(),)),
            //       child: Container(
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.end,
            //           children: [
            //             Text('Continue reading Shaman Drum', style: TextStyle(
            //               color: Colors.white,
            //               fontSize: 15
            //             ),),
            //             Icon(Icons.navigate_next_rounded, color: Colors.white,)
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
