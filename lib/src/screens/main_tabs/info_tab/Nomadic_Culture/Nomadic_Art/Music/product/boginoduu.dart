// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BoginoDuu extends StatefulWidget {
  const BoginoDuu({super.key});

  @override
  State<BoginoDuu> createState() => _BoginoDuuState();
}

class _BoginoDuuState extends State<BoginoDuu> {
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
                  image: NetworkImage(AppStyle.boginoduu),
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
                    'Bogino Duu, translating to "short song" in Mongolian, offers a contrasting musical experience to the expansive melodies of Urtiin Duu. Known for its more rhythmic and lively composition, Bogino Duu encapsulates a faster tempo and a more straightforward structure, making it an essential part of Mongolian musical and social life. This genre is celebrated for its expression of everyday themes, humor, and the reflection of the joys and sorrows encountered in daily life.',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.justify,
                  ).animate().fade(delay: 800.ms),
                  const SizedBox(height: 20),
                  const Text(
                        'Historical and Cultural Context',
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
                    'While not as ancient as Urtiin Duu, Bogino Duu has firmly established its presence in Mongolian culture, serving as a versatile medium for storytelling and emotional expression. These short songs have traditionally played a vital role in community gatherings, celebrations, and as a form of entertainment among nomadic groups. The ability of Bogino Duu to capture poignant moments of life in concise, evocative melodies has made it a beloved genre among Mongolians.',
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
                    'The hallmark of Bogino Duu lies in its concise yet expressive nature. Songs typically last only a few minutes but are rich in lyrical content and musical variety. Unlike the long song`s focus on the expansive soundscape of the steppe, short songs are more personal, often delving into themes of love, nature, humor, and daily life with an immediacy that resonates with listeners. Bogino Duu is characterized by a clear verse-chorus structure, with melodies that are catchy and easily memorable. The accompaniment, if present, is usually minimal, allowing the lyrics and melody to take center stage. This simplicity in musical arrangement highlights the song`s narrative and emotional core.',
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
                        'Performance and Social Function',
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
                    'Bogino Duu is performed in a variety of settings, from informal family gatherings to major festivals and celebrations. Its lively tempo and engaging lyrics make it suitable for dance, contributing to its popularity at social events. Performers of Bogino Duu are often admired for their vocal agility and ability to convey complex emotions through succinct musical phrases. The genre serves as a social glue, fostering a sense of community and shared experience among participants. It`s not uncommon for attendees at gatherings to join in singing, further blurring the lines between performers and audience, and reinforcing the communal spirit of Mongolian culture.',
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
                        'Contemporary Influence and Preservation',
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
                    'In modern Mongolia, Bogino Duu continues to thrive, adapting to contemporary musical tastes while retaining its traditional roots. New compositions often incorporate modern instruments and production techniques, bringing fresh perspectives to the timeless themes of Bogino Duu. Efforts to preserve and promote Bogino Duu include its integration into music education curricula, performances at cultural events, and recordings by contemporary Mongolian artists. These initiatives ensure that the charm and vitality of short songs continue to be a living, evolving part of Mongolia`s musical heritage.',
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
                        'Conclusion',
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
                    'Bogino Duu stands as a vibrant testament to the rich tapestry of Mongolian music, offering insight into the heart and soul of its people. With its engaging melodies and poignant lyrics, this genre captures the essence of Mongolian life, from the sweeping landscapes of the steppe to the intimate moments of daily existence. As it continues to evolve and inspire, Bogino Duu remains a cherished cultural treasure, echoing the enduring spirit and communal bonds of Mongolia.',
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
                  //       Navigator.popAndPushNamed(context, '/throatsing'),
                  //   child: Container(
                  //     color: Colors.white,
                  //     child: const Padding(
                  //       padding: EdgeInsets.all(8.0),
                  //       child: Row(
                  //         children: [
                  //           Text(
                  //             'Continue reading Throat Singing',
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
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
