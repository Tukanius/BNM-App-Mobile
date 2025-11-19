// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MuralsPainting extends StatefulWidget {
  const MuralsPainting({super.key});

  @override
  State<MuralsPainting> createState() => _MuralsPaintingState();
}

class _MuralsPaintingState extends State<MuralsPainting> {
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
                  image: NetworkImage(AppStyle.murals),
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
                    'Murals and rock art are among the earliest forms of artistic expression in Mongolia, dating back to the prehistoric era. These ancient artworks provide invaluable insights into the lives, beliefs, and environments of Mongolia`s earliest inhabitants. From the rock carvings in the vast Gobi desert to the intricate murals in the ruins of ancient monasteries, these art forms narrate the continuous story of human interaction with the Mongolian landscape.',
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
                    'The tradition of mural painting and rock art in Mongolia extends back thousands of years, with petroglyphs and pictographs found across the country. These artworks, etched or painted on natural rock surfaces, depict a wide range of subjects, including animals, human figures, hunting scenes, and symbolic motifs. The rock art of Mongolia, particularly prominent in sites like the Altai Mountains and the Gobi desert, reflects the shifting cultures and lifestyles of the region, from nomadic hunter-gatherers to early settled communities. Murals, on the other hand, became significant with the introduction of Buddhism to Mongolia around the 12th century. Buddhist monasteries and temples were adorned with elaborate murals depicting the Buddha, bodhisattvas, and various deities, serving both a decorative and instructional purpose. These murals played a crucial role in the spread and entrenchment of Buddhist teachings in Mongolia, creating a visual narrative of the religion`s cosmology and ethical tenets.',
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
                        'Artistic Techniques and Styles',
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
                    'Mongolian rock art encompasses a variety of techniques, including pecking, carving, and painting, to create images that have survived millennia. The subjects of these artworks often reflect the relationship between humans and the natural world, with a particular emphasis on animals that were central to the survival and spirituality of ancient Mongolians, such as deer, horses, and ibex. Buddhist murals are characterized by their vibrant colors, intricate details, and symbolic imagery. Created using natural pigments on plastered surfaces, these artworks require a high degree of skill and understanding of Buddhist iconography. The style of these murals has been influenced by various Asian artistic traditions, including Tibetan, Nepalese, and Chinese, yet they possess distinctive qualities that reflect Mongolia`s unique cultural identity.',
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
                        'Preservation and Contemporary Significance',
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
                    'Both rock art and murals are vital components of Mongolia`s cultural heritage, offering insights into the country`s historical, spiritual, and artistic evolution. Efforts to document, preserve, and study these artworks have intensified in recent years, recognizing their vulnerability to environmental degradation and human activities. Contemporary interest in Mongolia`s murals and rock art goes beyond academic study; these ancient artworks inspire modern Mongolian artists, who draw upon their country`s rich artistic legacy to create works that bridge the past and present. Additionally, murals and rock art sites have become important attractions for cultural tourism, allowing visitors to connect with Mongolia`s deep historical roots.',
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
                    'Murals and rock art are indispensable to understanding Mongolia`s cultural and historical landscape. As windows into the past, they reveal the continuity of human expression and the enduring bond between the Mongolian people and their environment. Through ongoing preservation and scholarly research, these ancient artworks continue to inform and inspire, testament to the rich tapestry of Mongolian heritage.',
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
