// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Tuuli extends StatefulWidget {
  const Tuuli({super.key});

  @override
  State<Tuuli> createState() => _TuuliState();
}

class _TuuliState extends State<Tuuli> {
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
                  image: NetworkImage(AppStyle.tuuli),
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
                    'Tuuli, the art of epic storytelling, stands as a monumental pillar in Mongolia`s rich tapestry of oral traditions. This venerable narrative form encompasses the recitation of epic poems and stories that have been passed down through generations, often accompanied by musical instruments like the Morin Khuur (horsehead fiddle) or the Tovshuur (lute). Tuuli narratives weave together the heroic deeds of legendary figures, the chronicles of historical events, and the mythology of the Mongolian people, playing a crucial role in preserving and perpetuating Mongolia`s cultural and historical heritage.',
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
                    'The tradition of Tuuli dates back to the era of the Mongol Empire and beyond, serving as a medium for documenting the exploits of ancestors, tribal lore, and the foundational myths of the Mongolian nation. These epics not only entertained but also educated listeners, embedding moral lessons, cultural values, and social norms within their intricate plots and character arcs. The oral transmission of these stories has ensured their survival, allowing them to evolve while retaining their core essence across centuries. Tuuli is deeply intertwined with Mongolia`s nomadic culture, where storytelling sessions provided entertainment during long winter nights and communal gatherings. The epics celebrate the virtues esteemed by nomadic society—bravery, wisdom, loyalty, and a profound connection to the natural world.',
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
                        'Musical Characteristics and Performance',
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
                    'The performance of Tuuli is a dynamic and engaging art form, requiring mastery in both storytelling and musical expression. Storytellers, or "zohioliach," utilize a range of vocal techniques to bring the characters and narratives to life, modulating their tone, pace, and volume to enhance the drama and emotional impact of the epic. The accompanying instruments underscore the narrative`s mood, providing a sonic backdrop that deepens the listener`s immersion.',
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
                        'Themes and Motifs',
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
                    'Common themes in Tuuli include the struggles and triumphs of heroes, the foundational myths of the Mongolian people, and the celebration of the natural and spiritual worlds. These stories often feature battles against supernatural foes, quests for sacred artifacts, and journeys through the majestic landscapes of Mongolia. Animals, particularly horses, play significant roles in these epics, symbolizing the indissoluble bond between the Mongolian people and their environment.',
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
                        'Contemporary Significance',
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
                    'In contemporary Mongolia, Tuuli remains a revered art form, celebrated in cultural festivals, academic studies, and through the efforts of cultural preservation organizations. The UNESCO recognition of the Mongolian epic of Jangar as part of the Intangible Cultural Heritage of Humanity highlights the global importance of Tuuli in preserving human cultural diversity. Efforts to record, study, and revitalize these epic narratives have led to a renewed interest in Tuuli among younger generations, ensuring that this ancient art form continues to inspire and educate. Modern adaptations and performances bridge the gap between tradition and innovation, introducing these timeless stories to a broader audience.',
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
                    'Epic storytelling, or Tuuli, is more than a relic of Mongolia`s past; it is a living tradition that continues to embody the spirit, values, and aspirations of the Mongolian people. Through the captivating narratives of Tuuli, listeners are transported to a world where the past coalesces with the present, heroes walk among us, and the bond between humanity and the natural world is celebrated. As a cornerstone of Mongolia`s oral heritage, Tuuli ensures that the epic tales of yesteryears continue to echo into the future, preserving the richness of Mongolia`s cultural landscape for generations to come. Incorporating these elements, Mongolian traditional music offers a window into the soul and history of the Mongolian people. From the profound and expansive melodies of Urtiin Duu to the intricate harmonics of Khoomei, each form and instrument contributes to a diverse musical landscape that is deeply intertwined with the natural world and the nomadic way of life. This rich musical heritage continues to inspire and resonate, not just within Mongolia, but across the globe, showcasing the universal power and beauty of music.',
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
