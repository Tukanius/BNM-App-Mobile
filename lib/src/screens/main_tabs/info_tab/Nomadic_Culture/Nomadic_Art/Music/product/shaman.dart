// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ShamanDrum extends StatefulWidget {
  const ShamanDrum({super.key});

  @override
  State<ShamanDrum> createState() => _ShamanDrumState();
}

class _ShamanDrumState extends State<ShamanDrum> {
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
                  image: NetworkImage(AppStyle.shamandrum),
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
                    'The Shaman Drum, known as Tenggeri in Mongolian, is a pivotal instrument in Mongolian shamanistic rituals, embodying the spiritual conduit between the physical and metaphysical worlds. This sacred drum serves not just as a musical instrument but as a tool for healing, divination, and communication with the spirit realm, reflecting the deep-rooted shamanistic traditions that are interwoven into the fabric of Mongolian spiritual and cultural life.',
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
                    'Shamanism, one of the oldest belief systems in Mongolia, involves practices and rituals that aim to establish connections with the spiritual world. The Tenggeri plays a crucial role in these rituals, believed to possess the power to summon spirits, guide souls, and facilitate the shaman`s journey to the otherworld. The use of the drum in shamanistic practices dates back to ancient times, making it a symbol of continuity and resilience in Mongolian spiritual traditions.',
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
                    image: NetworkImage(AppStyle.shamandrum2),
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
                    'The Tenggeri is typically a round, frame drum, with animal skin stretched over a wooden frame. The skin, usually from a horse or goat, is treated and tightened across the frame to produce a resonant sound when struck. The drum is often decorated with symbolic representations, including cosmic symbols, animals, and other totems, each adding layers of meaning and power to the instrument. A beater, made from wood and wrapped in leather, is used to play the drum.',
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
                        'Musical and Ritualistic Characteristics',
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
                    'The sound of the Tenggeri is deep and resonant, capable of inducing trance states in both the shaman and participants in the ritual. The rhythm and tempo of the drumming are integral to the shaman`s journey, with specific beats believed to facilitate travel between worlds, protect against malevolent spirits, and invoke ancestral guidance. The drumming serves as the heartbeat of the ritual, grounding the participants while allowing the shaman to navigate the spiritual landscape.',
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
                    image: NetworkImage(AppStyle.shamandrum3),
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
                    'In contemporary Mongolia, shamanism has experienced a revival, with the Tenggeri remaining at the heart of shamanistic ceremonies. It symbolizes the enduring link between the Mongolian people and their ancient traditions, providing not only a sense of identity but also a means of healing and spiritual exploration. The Tenggeri is respected as a sacred object, imbued with spiritual energy and significance.',
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
                    'Today, the Tenggeri continues to be central to shamanistic practices in Mongolia, with its use extending beyond traditional rituals into cultural performances and educational contexts. It serves as a tangible connection to Mongolia`s shamanistic heritage, attracting interest from both within Mongolia and internationally. Workshops and demonstrations offer insights into the craft of making and playing the Tenggeri, preserving this vital aspect of Mongolian culture for future generations. The Shaman Drum (Tenggeri) stands as a testament to the depth and complexity of Mongolian spiritual beliefs, encapsulating the profound connection between the Mongolian people, their land, and the spirit world. Through its rhythms, it narrates the story of a culture deeply entwined with the forces of nature and the unseen realms, continuing to resonate with the soul of Mongolia.',
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
                  //       Navigator.popAndPushNamed(context, '/longsong'),
                  //   child: Container(
                  //     color: Colors.white,
                  //     child: const Padding(
                  //       padding: EdgeInsets.all(8.0),
                  //       child: Row(
                  //         children: [
                  //           Text(
                  //             'Continue reading Long Song',
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
            //       onTap: () => Navigator.push(context, PageTransition(child: UrtiinDuu(), type: PageTransitionType.fade, duration: 900.ms)),
            //       // Navigator.push(context, MaterialPageRoute(builder: (context) => MNEmpire(),)),
            //       child: Container(
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.end,
            //           children: [
            //             Text('Continue reading Long Song', style: TextStyle(
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
