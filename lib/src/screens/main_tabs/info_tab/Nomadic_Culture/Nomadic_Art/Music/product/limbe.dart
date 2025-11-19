// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Limbe extends StatefulWidget {
  const Limbe({super.key});

  @override
  State<Limbe> createState() => _LimbeState();
}

class _LimbeState extends State<Limbe> {
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
                  image: NetworkImage(AppStyle.limbe),
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
                    'The Limbe is a traditional Mongolian flute, cherished for its clear, piercing sound that captures the essence of Mongolia`s natural beauty and the nomadic soul of its people. As a wind instrument made primarily from bamboo, wood, or sometimes metal, the Limbe holds a special place in Mongolian music, embodying the serenity and vastness of the Mongolian landscape.',
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
                    'The Limbe`s history is deeply rooted in the pastoral lifestyle of the Mongolian people, serving as a companion to herders and nomads across the vast steppes. Its melodies, often inspired by the sounds of nature, have been used to soothe animals, express feelings of love and longing, and celebrate the beauty of the Mongolian wilderness. The Limbe is not only a musical instrument but also a means of communication with nature and the divine, reflecting the profound spiritual beliefs of the Mongolian people.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage(AppStyle.limbe2)),
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
                    'Traditionally, the Limbe is crafted from a single piece of bamboo or wood, featuring a narrow cylindrical body with a series of finger holes along its length. The upper end is often carved into a decorative shape, and a distinctive notch at the blowing end creates the instrument`s characteristic sound. Modern versions of the Limbe may incorporate synthetic materials, but the traditional construction methods are still revered for their contribution to the instrument`s tonal quality.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage(AppStyle.limbe3)),
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
                    'The Limbe is known for its ability to produce a wide range of dynamics and expressive melodies. Its music is characterized by fluid, improvisational playing styles, with rapid runs, trills, and glissandi that mimic the movements of birds, the flow of water, and the rustling of leaves. The instrument`s unique sound, capable of reaching high pitches with clarity and resonance, allows it to stand out in solo performances and ensemble settings alike.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            const SizedBox(height: 5),
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
                    'In Mongolian culture, the Limbe is often associated with themes of love, nature, and the philosophical contemplation of life. It is commonly played during important ceremonies, festivals, and intimate gatherings, serving as a tool for storytelling and emotional expression. The Limbe`s music is believed to have a calming effect, bridging the gap between the human heart and the natural world.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage(AppStyle.limbe4)),
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
                    'The Limbe continues to flourish in contemporary Mongolian music, with musicians exploring new techniques and compositions that blend traditional melodies with modern influences. It is featured in world music festivals, cultural exchanges, and educational programs, highlighting its versatility and the ongoing relevance of traditional Mongolian music in a global context. In summary, the Limbe is much more than a flute; it is a symbol of Mongolia`s rich cultural heritage and its enduring bond with the natural world. Through its melodies, the Limbe invites listeners to explore the depth of Mongolian music and the timeless beauty of its landscapes, offering a window into the soul of the Mongolian people.',
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
                  //       Navigator.popAndPushNamed(context, '/tovshuur'),
                  //   child: Container(
                  //     color: Colors.white,
                  //     child: const Padding(
                  //       padding: EdgeInsets.all(8.0),
                  //       child: Row(
                  //         children: [
                  //           Text(
                  //             'Continue reading Tovshuur',
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
            //       onTap: () => Navigator.push(context, PageTransition(child: Tovshuur(), type: PageTransitionType.fade, duration: 900.ms)),
            //       // Navigator.push(context, MaterialPageRoute(builder: (context) => MNEmpire(),)),
            //       child: Container(
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.end,
            //           children: [
            //             Text('Continue reading Tovshuur', style: TextStyle(
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
