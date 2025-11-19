import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Dance/home_screen.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Music/home_screen.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Painting/home_screen.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/calligraphy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';

class NomadicArt extends StatelessWidget {
  const NomadicArt({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Art',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 28,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          PageTransition(
                            child: const Music(),
                            type: PageTransitionType.leftToRightWithFade,
                            duration: 400.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/ThumnbailApp/Music.jpg',
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
                              'Music',
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
                            child: const Painting(),
                            type: PageTransitionType.leftToRightWithFade,
                            duration: 400.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/ThumnbailApp/Painting.jpg',
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
                              'Painting',
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
                            child: const Calligraphy(),
                            type: PageTransitionType.rightToLeftWithFade,
                            duration: 400.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/ThumnbailApp/Calligraphy.jpg',
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
                              'Calligraphy',
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
                            child: const Dance(),
                            type: PageTransitionType.rightToLeftWithFade,
                            duration: 400.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/ThumnbailApp/Dance.jpg',
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
                              'Dance',
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
          //   children: [
          //     Container(
          //       alignment: Alignment.bottomLeft,
          //       decoration: BoxDecoration(
          //         color: Colors.amber,
          //         borderRadius: BorderRadius.circular(15),
          //       ),
          //       width: size.width,
          //       height: size.width * 0.44,
          //       child: Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Text(
          //           'Music',
          //           style: TextStyle(
          //             fontSize: 17,
          //             fontWeight: FontWeight.w900,
          //             color: Colors.white,
          //           ),
          //         ),
          //       ),
          //     ),
          //     SizedBox(height: 10),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         Column(
          //           children: [
          //             Container(
          //               alignment: Alignment.bottomLeft,
          //               decoration: BoxDecoration(
          //                 color: Colors.amber,
          //                 borderRadius: BorderRadius.circular(15),
          //               ),
          //               width: size.width * 0.44,
          //               height: size.width * 0.9,
          //               child: Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Text(
          //                   'Dance',
          //                   style: TextStyle(
          //                     fontSize: 17,
          //                     fontWeight: FontWeight.w900,
          //                     color: Colors.white,
          //                   ),
          //                 ),
          //               ),
          //             )
          //           ],
          //         ),
          //         Column(
          //           children: [
          //             Container(
          //               alignment: Alignment.bottomLeft,
          //               decoration: BoxDecoration(
          //                 color: Colors.amber,
          //                 borderRadius: BorderRadius.circular(15),
          //               ),
          //               width: size.width * 0.44,
          //               height: size.width * 0.44,
          //               child: Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Text(
          //                   'Calligraphy',
          //                   style: TextStyle(
          //                     fontSize: 17,
          //                     fontWeight: FontWeight.w900,
          //                     color: Colors.white,
          //                   ),
          //                 ),
          //               ),
          //             ),
          //             SizedBox(height: 10),
          //             Container(
          //               alignment: Alignment.bottomLeft,
          //               decoration: BoxDecoration(
          //                 color: Colors.amber,
          //                 borderRadius: BorderRadius.circular(15),
          //               ),
          //               width: size.width * 0.44,
          //               height: size.width * 0.44,
          //               child: Padding(
          //                 padding: const EdgeInsets.all(8.0),
          //                 child: Text(
          //                   'Painting',
          //                   style: TextStyle(
          //                     fontSize: 17,
          //                     fontWeight: FontWeight.w900,
          //                     color: Colors.white,
          //                   ),
          //                 ),
          //               ),
          //             )
          //           ],
          //         )
          //       ],
          //     )
          //   ],
          // ),
        ),
      ),
    );
  }
}
