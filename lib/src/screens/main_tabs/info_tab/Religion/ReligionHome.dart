import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Religion/Buddhism/home_screen.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Religion/Catholic/home_screen.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Religion/Islam/home_screen.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Religion/Shamanism/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';

class ReligionHome extends StatefulWidget {
  const ReligionHome({super.key});

  @override
  State<ReligionHome> createState() => _ReligionHomeState();
}

class _ReligionHomeState extends State<ReligionHome> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Religion',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              const Text(
                textAlign: TextAlign.justify,
                'Mongolia is a land where diverse spiritual beliefs intertwine to create a unique harmony. From the deep-rooted traditions of Shamanism, the guiding spirit of Mongolia’s ancient nomads, to the serene teachings of Buddhism, which flourished under the Mongol Empire, the country`s spiritual landscape reflects its rich history and resilience. Islam found its way to Mongolia through trade and cultural exchanges along the Silk Road, enriching the tapestry of faith. Catholicism, introduced by missionaries in the 13th century, carved a quiet but enduring presence, representing Mongolia’s openness to the world. Today, these four religions coexist peacefully, symbolizing Mongolia’s commitment to respect and unity. In this vast land of open skies and enduring traditions, spiritual harmony is not just a value but a way of life. It’s a testament to the resilience and adaptability of the Mongolian people, who have embraced diversity while preserving their heritage.',
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          PageTransition(
                            child: const Buddhism(),
                            type: PageTransitionType.leftToRightWithFade,
                            duration: 300.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/ThumnbailApp/Buddhism.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: size.width * 0.44,
                          height: size.width * 0.9,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Buddhism',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          PageTransition(
                            child: const Islam(),
                            type: PageTransitionType.leftToRightWithFade,
                            duration: 300.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/ThumnbailApp/Muslim.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: size.width * 0.44,
                          height: size.width * 0.44,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Islam',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          PageTransition(
                            child: const Catholic(),
                            type: PageTransitionType.rightToLeftWithFade,
                            duration: 300.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/ThumnbailApp/Christianity.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: size.width * 0.44,
                          height: size.width * 0.44,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Catholic Church',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          PageTransition(
                            child: const Shamanism(),
                            type: PageTransitionType.rightToLeftWithFade,
                            duration: 300.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/ThumnbailApp/Shamanism.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          width: size.width * 0.44,
                          height: size.width * 0.9,
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Shamanism',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          // Column(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     // Text(
          //     //   'Religion',
          //     //   style: TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
          //     // ),

          //     GestureDetector(
          //       onTap: () => Navigator.push(context,
          //           MaterialPageRoute(builder: (context) => Shamanism())),
          //       child: Container(
          //         width: size.width,
          //         height: size.height * 0.22,
          //         decoration: BoxDecoration(
          //           image: DecorationImage(
          //             fit: BoxFit.cover,
          //             filterQuality: FilterQuality.high,
          //             image: NetworkImage(
          //                 'http://159.223.56.204:8000/asset/shamanism.jpg'),
          //           ),
          //           color: Colors.grey,
          //           borderRadius: BorderRadius.circular(10),
          //         ),
          //         clipBehavior: Clip.antiAlias,
          //         child: Align(
          //           alignment: Alignment.bottomCenter,
          //           child: Text(
          //             'Shamanism',
          //             style: TextStyle(
          //                 fontSize: 16,
          //                 color: Colors.white,
          //                 fontWeight: FontWeight.w800),
          //           ).animate().flipV(delay: 300.ms),
          //         ),
          //       ),
          //     ),
          //     GestureDetector(
          //       onTap: () => Navigator.push(
          //           context, MaterialPageRoute(builder: (context) => Buddhism())),
          //       child: Container(
          //         width: size.width,
          //         height: size.height * 0.22,
          //         decoration: BoxDecoration(
          //           image: DecorationImage(
          //             fit: BoxFit.cover,
          //             filterQuality: FilterQuality.high,
          //             image: NetworkImage(
          //                 'http://159.223.56.204:8000/asset/buddhism.jpg'),
          //           ),
          //           color: Colors.grey,
          //           borderRadius: BorderRadius.circular(10),
          //         ),
          //         clipBehavior: Clip.antiAlias,
          //         child: Align(
          //           alignment: Alignment.bottomCenter,
          //           child: Text(
          //             'Buddhism',
          //             style: TextStyle(
          //                 fontSize: 16,
          //                 color: Colors.white,
          //                 fontWeight: FontWeight.w800),
          //           ).animate().flipV(delay: 300.ms),
          //         ),
          //       ),
          //     ),
          //     GestureDetector(
          //       onTap: () => Navigator.push(
          //           context, MaterialPageRoute(builder: (context) => Catholic())),
          //       child: Container(
          //         width: size.width,
          //         height: size.height * 0.22,
          //         decoration: BoxDecoration(
          //           image: DecorationImage(
          //             fit: BoxFit.cover,
          //             filterQuality: FilterQuality.high,
          //             image: NetworkImage(
          //                 'http://159.223.56.204:8000/asset/catholic.jpg'),
          //           ),
          //           color: Colors.grey,
          //           borderRadius: BorderRadius.circular(10),
          //         ),
          //         clipBehavior: Clip.antiAlias,
          //         child: Align(
          //           alignment: Alignment.bottomCenter,
          //           child: Text(
          //             'Catholic Church',
          //             style: TextStyle(
          //                 fontSize: 16,
          //                 color: Colors.white,
          //                 fontWeight: FontWeight.w800),
          //           ).animate().flipV(delay: 300.ms),
          //         ),
          //       ),
          //     ),
          //     GestureDetector(
          //       onTap: () => Navigator.push(
          //           context, MaterialPageRoute(builder: (context) => Islam())),
          //       child: Container(
          //         width: size.width,
          //         height: size.height * 0.20,
          //         decoration: BoxDecoration(
          //           image: DecorationImage(
          //             fit: BoxFit.cover,
          //             filterQuality: FilterQuality.high,
          //             image: NetworkImage(
          //                 'http://159.223.56.204:8000/asset/islam.jpg'),
          //           ),
          //           color: Colors.grey,
          //           borderRadius: BorderRadius.circular(10),
          //         ),
          //         clipBehavior: Clip.antiAlias,
          //         child: Align(
          //           alignment: Alignment.bottomCenter,
          //           child: Text(
          //             'Islam',
          //             style: TextStyle(
          //                 fontSize: 16,
          //                 color: Colors.white,
          //                 fontWeight: FontWeight.w800),
          //           ).animate().flipV(delay: 500.ms),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
