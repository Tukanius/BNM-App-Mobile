// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Accessories extends StatefulWidget {
  const Accessories({super.key});

  @override
  State<Accessories> createState() => _AccessoriesState();
}

class _AccessoriesState extends State<Accessories> {
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
                  image: NetworkImage(AppStyle.goyl),
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
                    'Mongolian traditional clothing, characterized by its vibrant colors, intricate patterns, and practical design, is complemented by a range of accessories that are not only decorative but also hold significant cultural and symbolic meanings. These accessories, which include jewelry, belts, sashes, and amulets, play an essential role in Mongolian attire, reflecting the wearer`s identity, social status, and the specific occasions for which they are worn.',
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
                    'Accessories in Mongolian traditional attire have evolved over centuries, influenced by Mongolia`s nomadic lifestyle, the diverse climates of the region, and interactions with neighboring cultures. Each accessory is crafted with care, often incorporating materials that are locally sourced and symbolically important, such as silver, coral, and precious stones. The design and ornamentation of these accessories are deeply imbued with Mongolian beliefs, traditions, and the nomadic way of life.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage(AppStyle.goyl2)),
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
                        'Types of Accessories and Their Significance',
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
                    'Jewelry:   Traditional Mongolian jewelry is not merely decorative; it serves as a symbol of wealth, social status, and protection. Earrings, necklaces, rings, and bracelets are often made from silver, believed to have purifying properties, and adorned with gemstones like coral and turquoise for their protective powers. Jewelry is worn by both men and women, with specific pieces passed down through generations as family heirlooms.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  const SizedBox(height: 10),
                  const Text(
                    'Belts and Sashes:   Belts and sashes are central to Mongolian traditional attire, serving both practical and aesthetic purposes. They are used to secure the Deel (the traditional robe) and carry personal items such as snuff bottles, knives, and pouches. Belts, often made of leather and elaborately decorated with silver buckles and ornaments, signify the wearer`s marital status and achievements. Sashes, usually made from silk and brightly colored, add a layer of sophistication and elegance to the ensemble.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  const SizedBox(height: 10),
                  const Text(
                    'Boots:   Traditional Mongolian boots, known as Gutal, are designed to withstand the country`s harsh climate and varied terrain. These boots are not only functional but also highly decorative, featuring embroidered patterns and upturned toes, a design believed to prevent negative energy from entering the soul.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  const SizedBox(height: 10),
                  const Text(
                    'Amulets and Talismans:   Worn for protection and good fortune, amulets and talismans are a common accessory in Mongolian traditional clothing. These items, often inscribed with Buddhist prayers or symbols, are believed to ward off evil spirits and bring blessings to the wearer. They can be worn as pendants, sewn into clothing, or carried in pouches.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  const SizedBox(height: 10),
                  const Text(
                    'Headwear Decorations:   Accessories specific to headwear, such as ornamental pins and feathers, add an extra layer of meaning and beauty to Mongolian hats and headdresses. These decorations can indicate the wearer`s tribe, region, or special achievements.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage(AppStyle.goyl3)),
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
                    'In contemporary Mongolia, traditional accessories continue to play a vital role in cultural and ceremonial events, such as weddings, festivals, and national holidays. Artisans and designers are breathing new life into these traditional forms, creating pieces that appeal to modern sensibilities while preserving their cultural heritage. The global interest in ethnic and cultural fashion has also brought Mongolian accessories to the attention of an international audience, showcasing the unique craftsmanship and rich cultural narratives of Mongolia.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage(AppStyle.goyl4)),
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
                    'Accessories in Mongolian traditional clothing are a testament to the rich cultural heritage, artistry, and spiritual beliefs of the Mongolian people. Beyond their aesthetic appeal, these items serve as carriers of history, identity, and tradition, weaving together the past and present of Mongolian culture. As Mongolia continues to navigate the path between tradition and modernity, these accessories remain a cherished and enduring symbol of Mongolian identity.',
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
