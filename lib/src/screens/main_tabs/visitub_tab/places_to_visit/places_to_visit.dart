// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/places_to_visit/GandanMonastery.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/places_to_visit/MorningStreet.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/places_to_visit/NarantuulBlackMarket.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/places_to_visit/NationalGarden.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/places_to_visit/UlaanbaatarSign.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/places_to_visit/ZaisanMonument.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/places_to_visit/dashchoilin.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/places_to_visit/park.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/places_to_visit/sukhbaatarSquare.dart';
import 'package:flutter/material.dart';

class Place_to_visit extends StatefulWidget {
  const Place_to_visit({super.key});

  @override
  State<Place_to_visit> createState() => _Place_to_visitState();
}

class _Place_to_visitState extends State<Place_to_visit> {
  List<String> image = [
    "http://159.223.56.204:8000/asset/add/thumb/SukhbaatarSquare-1.jpg",
    "http://159.223.56.204:8000/asset/add/thumb/TsetserlegtKhureelen-1.jpg",
    "http://159.223.56.204:8000/asset/add/thumb/park-1.jpg",
    "http://159.223.56.204:8000/asset/add/thumb/MorningStreet-1.jpg",
    "http://159.223.56.204:8000/asset/add/thumb/gandan-1.jpg",
    "http://159.223.56.204:8000/asset/add/thumb/zaisan-1.jpg",
    "http://159.223.56.204:8000/asset/Ub/Cultural/PlacesVisit/GoldenBuddha/Buddha%20(1%20of%202).jpg",
    "http://159.223.56.204:8000/asset/add/thumb/UlaanbaatarSign-1.jpg",
    "http://159.223.56.204:8000/asset/add/thumb/narantuul-1.jpg",
    "http://159.223.56.204:8000/asset/Other/Дашчойлин хийд (10 of 10).jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Places to visit',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_rounded,
            size: 28,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SukhbaatarSquare(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(image[0]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: size.width,
                  height: size.width * 0.5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: double.infinity,
                        height: size.height / 4.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87,
                              Colors.black12.withOpacity(0.05),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Sukhbaatar square',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Container(
                //   alignment: Alignment.bottomLeft,
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(8),
                //     image: DecorationImage(image: NetworkImage(image[0]), fit: BoxFit.cover)
                //   ),
                //   width: size.width,
                //   height: size.width * 0.5,
                //   child: Padding(padding: EdgeInsets.all(10),
                //     child: Text('Sukhbaatar square', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),),
                //   ),
                // ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MorningStreet(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(image[1]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width * 0.45,
                      height: size.width * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: double.infinity,
                            height: size.height / 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  Colors.black87,
                                  Colors.black12.withOpacity(0.05),
                                ],
                              ),
                            ),
                            child: const Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'National Garden',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Park()),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(image[2]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width * 0.45,
                      height: size.width * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: double.infinity,
                            height: size.height / 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  Colors.black87,
                                  Colors.black12.withOpacity(0.05),
                                ],
                              ),
                            ),
                            child: const Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Park',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NationalGarden(),
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(image[3]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width,
                      height: size.width * 0.5,
                      child: const Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Morning Street',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Narantuul(),
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: NetworkImage(image[4]),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: size.width * 0.45,
                          height: size.width * 0.45,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.center,
                                colors: [
                                  Colors.black87,
                                  const Color.fromARGB(
                                    31,
                                    56,
                                    56,
                                    56,
                                  ).withOpacity(0.001),
                                ],
                              ),
                            ),
                            child: const Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'Gandan Monastery',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NightStreetFood(),
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                              image: NetworkImage(image[5]),
                              fit: BoxFit.cover,
                            ),
                          ),
                          width: size.width * 0.45,
                          height: size.width * 0.45,
                          child: const Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Zaisan Monument',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
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
              const SizedBox(height: 10),
              // GestureDetector(
              //   onTap: () => Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => BuddhaStatue(),
              //       )),
              //   child: Container(
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(8),
              //         image: DecorationImage(
              //             image: NetworkImage(image[6]), fit: BoxFit.cover)),
              //     width: size.width,
              //     height: size.width * 0.5,
              //     child: Container(
              //       decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(8),
              //           gradient: LinearGradient(
              //               begin: Alignment.bottomCenter,
              //               end: Alignment.center,
              //               colors: [
              //                 Colors.black87,
              //                 const Color.fromARGB(31, 56, 56, 56)
              //                     .withOpacity(0.001)
              //               ])),
              //       child: Align(
              //         alignment: Alignment.bottomLeft,
              //         child: Padding(
              //           padding: const EdgeInsets.all(10),
              //           child: Text('Buddha statue',
              //               style: TextStyle(
              //                   fontSize: 14,
              //                   fontWeight: FontWeight.bold,
              //                   color: Colors.white)),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     GestureDetector(
              //       // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DBET(),)),
              //       child: Container(
              //         decoration: BoxDecoration(
              //           image: DecorationImage(
              //               image: AssetImage(AppStyle.p1), fit: BoxFit.cover),
              //           borderRadius: BorderRadius.circular(8),
              //         ),
              //         width: size.width * 0.45,
              //         height: size.width * 0.45,
              //         child: Container(
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(8),
              //               gradient: LinearGradient(
              //                   begin: Alignment.bottomCenter,
              //                   end: Alignment.center,
              //                   colors: [
              //                     Colors.black87,
              //                     const Color.fromARGB(31, 56, 56, 56)
              //                         .withOpacity(0.001)
              //                   ])),
              //           child: Align(
              //             alignment: Alignment.bottomLeft,
              //             child: Padding(
              //               padding: EdgeInsets.all(10),
              //               child: Text(
              //                   'State Academic Theatre of Opera and Ballet',
              //                   style: TextStyle(
              //                       fontSize: 14,
              //                       fontWeight: FontWeight.bold,
              //                       color: Colors.white)),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //     GestureDetector(
              //       // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DT(),)),
              //       child: Container(
              //         decoration: BoxDecoration(
              //           image: DecorationImage(
              //               image: AssetImage(AppStyle.dt1), fit: BoxFit.cover),
              //           borderRadius: BorderRadius.circular(8),
              //         ),
              //         width: size.width * 0.45,
              //         height: size.width * 0.45,
              //         child: Container(
              //           decoration: BoxDecoration(
              //               borderRadius: BorderRadius.circular(8),
              //               gradient: LinearGradient(
              //                   begin: Alignment.bottomCenter,
              //                   end: Alignment.center,
              //                   colors: [
              //                     Colors.black87,
              //                     const Color.fromARGB(31, 56, 56, 56)
              //                         .withOpacity(0.001)
              //                   ])),
              //           child: Align(
              //             alignment: Alignment.bottomLeft,
              //             child: Padding(
              //               padding: EdgeInsets.all(10),
              //               child: Text(
              //                   'The State Academic Drama Theater of Mongolia',
              //                   style: TextStyle(
              //                       fontSize: 14,
              //                       fontWeight: FontWeight.bold,
              //                       color: Colors.white)),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // ),
              // SizedBox(
              //   height: 10,
              // ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Zaisan()),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(image[7]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: size.width,
                  height: size.width * 0.5,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                          Colors.black87,
                          const Color.fromARGB(
                            31,
                            56,
                            56,
                            56,
                          ).withOpacity(0.001),
                        ],
                      ),
                    ),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Ulaanbaatar Sign',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Gandan()),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(image[8]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width * 0.45,
                      height: size.width * 0.45,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87,
                              const Color.fromARGB(
                                31,
                                56,
                                56,
                                56,
                              ).withOpacity(0.001),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Narantuul Black Market',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Dashchoilin(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(image[9]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width * 0.45,
                      height: size.width * 0.45,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87,
                              const Color.fromARGB(
                                31,
                                56,
                                56,
                                56,
                              ).withOpacity(0.001),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Dashchoilin Monastery',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
