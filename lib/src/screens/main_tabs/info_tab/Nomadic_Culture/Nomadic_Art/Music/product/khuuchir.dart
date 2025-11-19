// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Khuuchir extends StatefulWidget {
  const Khuuchir({super.key});

  @override
  State<Khuuchir> createState() => _KhuuchirState();
}

class _KhuuchirState extends State<Khuuchir> {
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
                  image: NetworkImage(AppStyle.huuchir),
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
                    'The Khuuchir, also spelled as Huuchir, is a traditional Mongolian bowed string instrument, known for its distinctive sound that resonates with the rich cultural and musical heritage of Mongolia. This instrument is an integral part of Mongolia`s musical history, playing a significant role in various aspects of Mongolian life, including ceremonial rituals, storytelling, and entertainment.',
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
                    'The Khuuchir`s origins can be traced back to the diverse ethnic groups within Mongolia and its neighboring regions. Its history is deeply intertwined with the Mongolian nomadic lifestyle, where music played a central role in expressing emotions, stories, and the deep connection with nature. The instrument has undergone various transformations over the centuries, with influences from Central Asian and East Asian musical traditions contributing to its development.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(AppStyle.huuchir2),
                  ),
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
                    'The Khuuchir typically features a small, rounded wooden body, covered with animal skin, which acts as the resonator. It has two or four strings made of horsehair or modern materials like nylon. The bow, also strung with horsehair, is used to produce sound by creating friction against the strings. The Khuuchir is distinguished by its long neck and the absence of frets, which allows for a wide range of pitch modulation and expressive playing techniques.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(AppStyle.huuchir3),
                  ),
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
                    'The Khuuchir is celebrated for its haunting, soulful sound, capable of producing a wide range of tones, from deep, resonant lows to piercing, ethereal highs. The instrument`s sound is often described as being closely tied to the natural world, capable of imitating the sounds of animals, the wind, and the flowing rivers of the Mongolian landscape. Its music is characterized by elaborate ornamentation and microtonal variations, demanding a high level of skill and emotional depth from the performer.',
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
                    'In Mongolian culture, the Khuuchir is more than just a musical instrument; it is a symbol of the nation`s soul and identity. It is used in various traditional ceremonies and festivities, including the Naadam Festival, and in performances of long songs (Urtiin Duu) and epic tales (Tuuli). The instrument plays a crucial role in preserving Mongolia`s oral traditions and cultural heritage, serving as a link between past generations and the present.',
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
                    'Today, the Khuuchir continues to hold a significant place in Mongolian music, both in traditional settings and in contemporary performances. It is featured in fusion music projects, where it is combined with other musical styles and instruments, showcasing its versatility and the innovative spirit of Mongolian musicians. Music schools across Mongolia offer instruction in playing the Khuuchir, ensuring the instrument`s techniques and repertoires are passed on to new generations. The Khuuchir embodies the spirit of Mongolia, with its music capturing the essence of the Mongolian landscape and the nomadic heart of its people. Through its strings, the Khuuchir tells stories of history, nature, and human emotion, continuing to inspire and move audiences around the world.',
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
                  //   onTap: () => Navigator.popAndPushNamed(context, '/limbe'),
                  //   child: Container(
                  //     color: Colors.white,
                  //     child: const Padding(
                  //       padding: EdgeInsets.all(8.0),
                  //       child: Row(
                  //         children: [
                  //           Text(
                  //             'Continue reading Limbe',
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
            //       onTap: () => Navigator.push(context, PageTransition(child: Limbe(), type: PageTransitionType.fade, duration: 900.ms)),
            //       // Navigator.push(context, MaterialPageRoute(builder: (context) => MNEmpire(),)),
            //       child: Container(
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.end,
            //           children: [
            //             Text('Continue reading Limbe', style: TextStyle(
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
