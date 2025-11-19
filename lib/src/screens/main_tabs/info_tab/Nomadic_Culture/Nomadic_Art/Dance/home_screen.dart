// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Dance/product/biyelgee.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Dance/product/court.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Dance/product/tsam.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Dance/product/wrestler.dart';
import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class Dance extends StatefulWidget {
  const Dance({super.key});

  @override
  State<Dance> createState() => _DanceState();
}

class _DanceState extends State<Dance> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Dancing',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: NetworkImage(AppStyle.dancing),
                    fit: BoxFit.cover,
                  ),
                ),
                width: size.width,
                height: size.width * 0.9,
              ),
              const SizedBox(height: 10),
              const Text(
                'Mongolian traditional dancing is a captivating expression of the country`s rich cultural tapestry, embodying the spirit, history, and traditions of its people. Rooted deeply in Mongolia`s nomadic lifestyle, these dances are not only forms of entertainment but also serve as important cultural rituals and storytelling mediums. There are several distinct styles of traditional Mongolian dancing, each reflecting different aspects of Mongolian life, nature, and spirituality.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 5),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Biyelgee()),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(AppStyle.biyelgee),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width,
                      height: size.width * 0.4,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87,
                              Colors.black12.withOpacity(0.005),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Biyelgee: The Mongolian Body Dance',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Tsam()),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(AppStyle.tsam),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width,
                      height: size.width * 0.4,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87,
                              Colors.black12.withOpacity(0.005),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Tsam: The Ritual Dance',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  // GestureDetector(
                  //   onTap: () => Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //         builder: (context) => HorseDance(),
                  //       )),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(8),
                  //       color: Colors.amber,
                  //     ),
                  //     width: size.width,
                  //     height: size.width * 0.4,
                  //     child: Container(
                  //       decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(8),
                  //           gradient: LinearGradient(
                  //               begin: Alignment.bottomCenter,
                  //               end: Alignment.center,
                  //               colors: [
                  //                 Colors.black87,
                  //                 Colors.black12.withOpacity(0.005)
                  //               ])),
                  //       child: Align(
                  //         alignment: Alignment.bottomLeft,
                  //         child: Padding(
                  //           padding: const EdgeInsets.all(8.0),
                  //           child: Text(
                  //             'Khuurchir: The Horse Dance',
                  //             style: TextStyle(
                  //               color: Colors.white,
                  //               fontWeight: FontWeight.bold,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CourtDance(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(AppStyle.court),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width,
                      height: size.width * 0.4,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87,
                              Colors.black12.withOpacity(0.005),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Uyach: The Court Dance',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WrestlerDance(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(AppStyle.wrestler),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width,
                      height: size.width * 0.4,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87,
                              Colors.black12.withOpacity(0.005),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Bökh: The Dance of Wrestler',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
