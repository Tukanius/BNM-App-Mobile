// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MiniaturePainting extends StatefulWidget {
  const MiniaturePainting({super.key});

  @override
  State<MiniaturePainting> createState() => _MiniaturePaintingState();
}

class _MiniaturePaintingState extends State<MiniaturePainting> {
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
                  image: NetworkImage(AppStyle.miniature),
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
                    'Miniature painting, a detailed and delicate art form, holds a special place within Mongolian cultural heritage. This art involves the creation of highly detailed paintings on a small scale, often depicting religious, historical, and cultural scenes. Mongolian miniature painting, influenced by broader Central Asian traditions and the introduction of Buddhist iconography, flourished as an important means of both artistic expression and religious devotion.',
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
                    'The tradition of miniature painting in Mongolia is intertwined with the spread of Buddhism from Tibet and the influence of Persian and Chinese art forms during the medieval period. These paintings were not only valued for their aesthetic beauty but also for their role in illustrating religious texts, historical documents, and serving as meditational aids. Miniature paintings became a medium through which Mongolian artists could express their devotion, convey spiritual teachings, and preserve the nation`s history and folklore.',
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
                        'The Art and Technique',
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
                    'Mongolian miniature paintings are characterized by their intricate detail, vibrant colors, and meticulous craftsmanship. Artists use a variety of materials, including natural pigments, gold leaf, and fine brushes made from animal hair, to create these detailed works on paper, silk, or other materials. The scale of miniature painting requires a high degree of precision and skill, with artists often using magnifying aids to achieve the desired level of detail. The subjects of Mongolian miniature paintings are diverse, ranging from Buddhist deities and scenes from the Jataka tales (stories of the Buddha`s previous lives) to historical events and daily life in Mongolia. The paintings are often framed within elaborate borders and may include calligraphy, further enhancing their visual and spiritual impact.',
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
                        'Cultural and Religious Significance',
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
                    'In Mongolian culture, miniature paintings are revered not just for their artistic merit but also for their spiritual value. They are used in religious practices as aids for meditation and visualization, helping practitioners to focus their minds and engage more deeply with the subjects depicted. The paintings also serve as educational tools, introducing viewers to key figures and stories within Buddhism and Mongolian history. Miniature paintings are considered a form of sacred art, with the creation process itself viewed as a meditative and meritorious act. Artists approach their work with respect and devotion, often performing rituals or recitations before beginning a new piece.',
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
                    'Today, the art of miniature painting continues to be practiced and appreciated in Mongolia, with contemporary artists both preserving traditional techniques and exploring new themes and styles. Miniature painting exhibitions, both within Mongolia and internationally, showcase the depth and diversity of this art form, attracting new audiences and fostering a greater understanding of Mongolian culture and spirituality. Efforts to preserve miniature painting include workshops, educational programs, and the incorporation of modern technologies to document and share this rich artistic tradition. As a result, Mongolian miniature painting remains a vibrant and evolving aspect of the nation`s cultural landscape, bridging the past and present through its detailed depictions of the spiritual, historical, and everyday life of Mongolia.',
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
                    'Mongolian miniature painting is a testament to the country`s rich artistic heritage and spiritual depth. Through the meticulous craft of miniature painting, artists continue to tell the stories of Mongolia, capturing the essence of its culture, religion, and history in each delicate stroke. As this art form moves forward, it carries with it the traditions of the past, offering a window into the soul of Mongolia and its people.',
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
                              'Back to Painting',
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
                  //       Navigator.popAndPushNamed(context, '/contemporary'),
                  //   child: Container(
                  //     color: Colors.white,
                  //     child: const Padding(
                  //       padding: EdgeInsets.all(8.0),
                  //       child: Row(
                  //         children: [
                  //           Text(
                  //             'Continue reading Contemporary',
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
