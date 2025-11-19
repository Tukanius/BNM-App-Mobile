// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Headwear extends StatefulWidget {
  const Headwear({super.key});

  @override
  State<Headwear> createState() => _HeadwearState();
}

class _HeadwearState extends State<Headwear> {
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
                  image: NetworkImage(AppStyle.malgai),
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
                    'Mongolian traditional headwear, integral to the nation`s cultural attire, encompasses a diverse array of hats and headdresses, each with unique designs, materials, and cultural significances. These headpieces are not merely functional items meant to protect against Mongolia`s harsh climate but are also rich in symbolic meanings, reflecting the wearer`s social status, regional identity, and the specific occasions for which they are worn.',
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
                    'The tradition of Mongolian headwear dates back centuries, with its origins deeply rooted in the nomadic lifestyle of the Mongolian people. The vast range of climates across Mongolia, from the cold winds of the steppe to the scorching sun of the Gobi Desert, necessitated the development of various types of headwear for protection. Over time, these practical items evolved into highly stylized and culturally significant accessories, embodying the artistic expression and craftsmanship of Mongolian culture.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage(AppStyle.malgai2)),
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
                        'Types of Mongolian Headwear',
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
                    'Mongolian traditional headwear varies significantly across the country`s many ethnic groups and regions, with each type carrying its own history and symbolism.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  const SizedBox(height: 10),
                  const Text(
                    'Loovuuz:   Typically worn by men, the loovuuz is a pointed hat made of felt or fur, designed for warmth during the winter months. Its pointed shape is said to symbolize the connection between the earth and the sky, a concept deeply ingrained in Mongolian shamanistic beliefs.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  const SizedBox(height: 10),
                  const Text(
                    'Toortsog:   This round, flat hat is often worn during the summer for protection against the sun. Made from lightweight materials such as cotton or silk, the toortsog features vibrant patterns and colors, reflecting the wearer`s personal style.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  const SizedBox(height: 10),
                  const Text(
                    'Terleg:   The terleg is a versatile headdress that can be adjusted according to the weather, with flaps that can be folded down for warmth or tied up to allow for ventilation. It is commonly made from wool or felt and often decorated with traditional motifs.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                  const SizedBox(height: 10),
                  const Text(
                    'Khalkha:   Worn by women, the khalkha is an ornate headdress associated with ceremonial occasions, such as weddings. It is elaborately decorated with pearls, corals, and other precious materials, signifying the wearer`s status and wealth.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage(AppStyle.malgai3)),
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
                    'Mongolian headwear is deeply symbolic, often indicating the wearer`s age, marital status, and social standing. For example, the specific decorations and colors of a woman`s headdress can reveal whether she is single, married, or of noble descent. During traditional festivals and ceremonies, Mongolians wear their finest headwear, showcasing their heritage and paying homage to their ancestors.',
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
                    'In modern Mongolia, traditional headwear continues to be a source of national pride and cultural identity, especially during national holidays and festivals like Naadam and Tsagaan Sar. Artisans and designers are reviving old techniques and patterns, bringing traditional headwear into the contemporary fashion scene while preserving its cultural heritage.',
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
                    'Mongolian traditional headwear is a vivid testament to the nation`s rich cultural tapestry, embodying centuries of history, craftsmanship, and symbolism. These headpieces are a window into the soul of Mongolia, reflecting the diverse lifestyles and beliefs of its people. As Mongolia moves forward, its traditional headwear remains a cherished link to the past, celebrated for its beauty, significance, and enduring place in Mongolian culture.',
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
                  // Container(
                  //   color: Colors.white,
                  //   child: const Padding(
                  //     padding: EdgeInsets.all(8.0),
                  //     child: Row(
                  //       children: [
                  //         Text(
                  //           'Continue reading Accessories',
                  //           style: TextStyle(
                  //             fontWeight: FontWeight.bold,
                  //             fontSize: 12,
                  //           ),
                  //         ),
                  //         Icon(
                  //           Icons.arrow_forward_rounded,
                  //           color: Colors.black,
                  //           size: 20,
                  //         ),
                  //       ],
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
