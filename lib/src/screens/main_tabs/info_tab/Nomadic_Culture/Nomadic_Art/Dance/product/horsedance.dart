// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HorseDance extends StatefulWidget {
  const HorseDance({super.key});

  @override
  State<HorseDance> createState() => _HorseDanceState();
}

class _HorseDanceState extends State<HorseDance> {
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
                  image: NetworkImage(''),
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
                    'Khuurchir, also known as the Horse Dance, is a captivating and dynamic aspect of Mongolian traditional performing arts, embodying the deep reverence and connection the Mongolian people share with horses. This dance is a vivid portrayal of the grace, strength, and essential role horses play in the nomadic lifestyle of Mongolia. Through the Khuurchir, dancers emulate the movements and spirit of horses, offering a unique insight into Mongolian culture and its longstanding equestrian heritage.',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.justify,
                  ).animate().fade(delay: 800.ms),
                  const SizedBox(height: 20),
                  const Text(
                        'Historical and Cultural Background',
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
                    'The origins of Khuurchir are deeply interwoven with Mongolia`s history, where horses have been indispensable companions in daily life, warfare, and ceremonial practices. The dance likely evolved as a tribute to these revered animals, symbolizing their significance beyond mere utility. Horses in Mongolian culture are seen as symbols of freedom, power, and spiritual guidance, and the Khuurchir serves as an artistic expression of these values.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage('')),
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
                        'Performance and Technique',
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
                    'In the Khuurchir, dancers wear costumes that evoke the appearance of horses, including headdresses that mimic the mane and tail, and sometimes even hooves. The movements are carefully choreographed to replicate horses` actions such as galloping, trotting, and neighing. The dance requires considerable skill and agility, as performers must capture the essence of a horse`s movements while conveying the emotional bond between horse and rider. The performance is often accompanied by traditional Mongolian music, including instruments like the Morin Khuur (horsehead fiddle), which further enhances the equestrian theme. The rhythm and melody of the music are synchronized with the dancers` movements, creating a harmonious and immersive experience that transports the audience to the vast steppes of Mongolia.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage('')),
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
                    'The Khuurchir is more than a dance; it is a celebration of Mongolian identity and the enduring partnership between humans and horses. This dance is performed at various cultural events, festivals, and ceremonies, showcasing the pride Mongolians take in their equestrian skills and their profound connection to nature. The Khuurchir also serves an educational purpose, introducing younger generations to the importance of horses in Mongolian history and culture.',
                    style: TextStyle(color: Colors.white, wordSpacing: 2),
                  ).animate().fade(delay: 800.ms),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(image: NetworkImage('')),
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
                    'Today, the Khuurchir continues to be an integral part of Mongolia`s cultural preservation efforts, showcasing the nation`s rich heritage to both domestic and international audiences. It has also inspired contemporary interpretations and fusion performances, where traditional movements are blended with modern dance forms to create new expressions of Mongolian equestrian culture. As Mongolia navigates the balance between tradition and modernity, the Khuurchir remains a vibrant symbol of the nation`s past and present, celebrating the timeless bond between the Mongolian people and their cherished horses. Through this dance, the spirit of Mongolia`s steppes, the valor of its people, and the grace of its horses continue to captivate and inspire.',
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
                              'Back to Dance',
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
                  //   onTap: () => Navigator.popAndPushNamed(context, '/court'),
                  //   child: Container(
                  //     color: Colors.white,
                  //     child: const Padding(
                  //       padding: EdgeInsets.all(8.0),
                  //       child: Row(children: [
                  //         Text(
                  //           'Continue reading Court Dance',
                  //           style: TextStyle(
                  //               fontWeight: FontWeight.bold, fontSize: 12),
                  //         ),
                  //         Icon(
                  //           Icons.arrow_forward_rounded,
                  //           color: Colors.black,
                  //           size: 20,
                  //         ),
                  //       ]),
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
