// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Deel extends StatefulWidget {
  const Deel({super.key});

  @override
  State<Deel> createState() => _DeelState();
}

class _DeelState extends State<Deel> {
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
                  image: NetworkImage(AppStyle.deel),
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
                    'The Deel is a traditional Mongolian garment, embodying the rich cultural heritage and the adaptability of the Mongolian people to their environment. This long, robe-like coat, distinguished by its vibrant colors and intricate patterns, has been an essential part of Mongolian attire for centuries, reflecting the nation`s nomadic lifestyle, social status, and regional variations. The Deel is not merely clothing; it is a symbol of Mongolian identity and craftsmanship.',
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
                    'The history of the Deel traces back to the Mongol Empire when it served as practical attire for nomadic life on the steppes. Designed to protect against the harsh climate of Mongolia, the Deel`s structure and materials have evolved, but its essential functions and cultural significance remain unchanged. Over time, the Deel has come to represent more than utility, incorporating elements that signify marital status, regional affiliations, and important life milestones.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage(AppStyle.deel2)),
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
                        'Design and Structure',
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
                    'A traditional Deel is characterized by its wide, long sleeves, a high collar, and a sash that secures the garment around the waist. The Deel wraps around the body, closing at the side, and often extends to the wearer`s knees or lower. It is made from various materials, including cotton, silk, and wool, with heavier fabrics used for winter Deels and lighter ones for summer. The choice of fabric, along with the colors and patterns, can indicate the wearer`s region, social standing, and occasion for which the Deel is worn. Decorative elements such as embroidery, applique, and trimmings enhance the Deel`s aesthetic, showcasing the skill and creativity of Mongolian artisans. The sash, or "Belt," is not only functional but also a significant decorative element, often intricately designed and serving as a status symbol.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage(AppStyle.deel3)),
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
                    'The Deel is deeply ingrained in Mongolian rituals and celebrations. It is customary for individuals to wear their finest Deels during festivals like Naadam and Tsagaan Sar (Lunar New Year), as well as weddings and other ceremonial occasions. The Deel thus plays a crucial role in the preservation and expression of Mongolian cultural identity, bridging generations and regions. The garment also reflects the Mongolian ethos of harmony with nature, with designs and colors often inspired by the natural landscape. This connection is further emphasized by the sustainable and practical aspects of the Deel, which align with the nomadic lifestyle`s emphasis on respect for the environment.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage(AppStyle.deel4)),
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
                        'Contemporary Relevance',
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
                    'In modern Mongolia, the Deel continues to be a source of national pride and cultural expression. While everyday wear in urban areas may have shifted towards global fashion trends, the Deel remains a prominent feature in formal and celebratory settings. Contemporary designers are reinterpreting the Deel, blending traditional motifs with modern styles to create garments that appeal to younger generations while preserving the cultural heritage. Efforts to promote and preserve the art of making Deels include craftsmanship workshops, fashion shows, and cultural programs aimed at teaching young Mongolians about this traditional garment. Through these initiatives, the Deel remains a vibrant and meaningful symbol of Mongolian culture, connecting the past with the present and future.',
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
                    'The Deel stands as a testament to Mongolia`s rich cultural heritage, reflecting the nation`s history, values, and aesthetic sensibilities. More than just a piece of clothing, it is a symbol of identity, tradition, and the enduring spirit of the Mongolian people. As it evolves with contemporary influences, the Deel continues to be celebrated, ensuring its place in Mongolia`s cultural legacy for generations to come.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  const SizedBox(height: 10),
                  const Text(
                    'Materials: The Deel is made from various materials to suit different weather conditions. Winter Deels are often crafted from thick wool or animal skins, providing insulation against the cold, while summer Deels might be made from cotton or silk, offering breathability and comfort.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Design and Patterns: Deels come in many colors, with patterns that can signify the wearer`s marital status, age, and social position. Traditional designs often incorporate symbolic motifs inspired by nature, Mongolian mythology, and the Buddhist religion. The cut and style of the Deel can also vary between regions, reflecting local customs and climatic conditions.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Sash (Belt): The sash, used to secure the Deel, is not only functional but also a decorative element. It is often brightly colored, with intricate patterns and sometimes adorned with silver or gold accessories. The sash can also serve as a pocket for small items, emphasizing the Deel`s practicality for nomadic life.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ),
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
                              'Back to Clothing',
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
                  //   onTap: () => Navigator.popAndPushNamed(context, '/boots'),
                  //   child: Container(
                  //     color: Colors.white,
                  //     child: const Padding(
                  //       padding: EdgeInsets.all(8.0),
                  //       child: Row(
                  //         children: [
                  //           Text(
                  //             'Continue reading Boots',
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
