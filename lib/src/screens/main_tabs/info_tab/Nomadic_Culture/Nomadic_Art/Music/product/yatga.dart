// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Yatga extends StatefulWidget {
  const Yatga({super.key});

  @override
  State<Yatga> createState() => _YatgaState();
}

class _YatgaState extends State<Yatga> {
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
                  image: NetworkImage(AppStyle.yatga),
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
                    'The Yatga is a traditional Mongolian zither that holds a significant place in the rich tapestry of Mongolia`s musical heritage. As a stringed instrument, it is distinguished by its long, rectangular body and a range of strings that vary in number depending on the specific type of Yatga. This instrument is deeply interwoven with the cultural and artistic expressions of Mongolia, offering a melodious voice that echoes the nation`s history, spirituality, and its intrinsic connection to the natural landscape.',
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
                    'The origins of the Yatga can be traced back to ancient times, with its presence in Mongolian culture predating the Mongol Empire. It is believed to have been influenced by similar zither instruments from neighboring regions, particularly China, with the Guzheng being a notable example. Over the centuries, the Yatga has evolved, both in construction and playing technique, cementing its role as a staple instrument in Mongolian music and courtly entertainment.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage(AppStyle.yatga2)),
                ),
                width: size.width,
                height: size.width,
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
            //                       'http://159.223.56.204:8000/asset/budd5.jpg'),
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
            //                       'http://159.223.56.204:8000/asset/budd4.jpg'),
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
            //                       'http://159.223.56.204:8000/asset/budd3.jpg'),
            //                   fit: BoxFit.cover,
            //                   filterQuality: FilterQuality.high)),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
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
                    'The Yatga typically features a long, flat wooden body with a series of movable bridges that support between 13 to 21 strings made from silk, nylon, or metal. The number of strings and the instrument`s size may vary, influencing the range and depth of its sound. Players pluck the strings with their fingers, often using the thumb and first two fingers of the right hand, while the left hand may press the strings to the neck to vary the pitch and create vibrato effects.',
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
                    'The sound of the Yatga is characterized by its rich, harmonic tones and the potential for both lyrical melodies and complex polyphonic textures. Its music ranges from deeply contemplative pieces that reflect the vast Mongolian landscapes to lively compositions that capture the dynamism of traditional dances and celebrations. The Yatga`s repertoire includes folk songs, court music, and contemporary compositions, showcasing its versatility across various musical genres.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage(AppStyle.yatga3)),
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
                    'The Yatga is more than an instrument; it is a vessel for storytelling, an accompaniment to traditional Mongolian throat singing (Khoomei), and a crucial component of ceremonial and festive occasions. It has a special place in Mongolian rituals and Buddhist practices, where its music is considered to have healing properties and the ability to connect the physical with the spiritual realm.',
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
                    'In modern Mongolia, the Yatga continues to be celebrated and preserved as a cornerstone of national identity and cultural heritage. It is featured in concerts, recordings, and festivals, both within Mongolia and internationally, highlighting the global appeal of Mongolian music. Additionally, music schools across the country offer Yatga instruction, ensuring the transmission of skills and knowledge to future generations. The Yatga`s enduring presence in Mongolian culture symbolizes the resilience and continuity of Mongolia`s artistic traditions. Through its strings, the Yatga narrates stories of the past, presents the vibrancy of the present, and carries forward the legacy of Mongolian music into the future. Its captivating sound serves as a bridge between tradition and innovation, inviting listeners to explore the depth and breadth of Mongolia`s musical landscape.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
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
            //                       'http://159.223.56.204:8000/asset/budd2.jpg'),
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
            //                       'http://159.223.56.204:8000/asset/budd1.jpg'),
            //                   fit: BoxFit.cover,
            //                   filterQuality: FilterQuality.high)),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
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
                  //       Navigator.popAndPushNamed(context, '/khuuchir'),
                  //   child: Container(
                  //     color: Colors.white,
                  //     child: const Padding(
                  //       padding: EdgeInsets.all(8.0),
                  //       child: Row(
                  //         children: [
                  //           Text(
                  //             'Continue reading Khuuchir',
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
            //       onTap: () => Navigator.push(context, PageTransition(child: Khuuchir(), type: PageTransitionType.fade, duration: 900.ms)),
            //       // Navigator.push(context, MaterialPageRoute(builder: (context) => MNEmpire(),)),
            //       child: Container(
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.end,
            //           children: [
            //             Text('Continue reading Khuuchir', style: TextStyle(
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
