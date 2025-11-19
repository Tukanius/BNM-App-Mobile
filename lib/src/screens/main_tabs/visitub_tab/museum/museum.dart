// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/museum/UB.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/museum/bogdkhan.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/museum/chinggiskhaan.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/museum/choijinlama.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/museum/jukow.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/museum/military.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/museum/national.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/museum/puzzle.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/museum/theatre.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/museum/zanabazar.dart';
import 'package:flutter/material.dart';

class Museums extends StatefulWidget {
  const Museums({super.key});

  @override
  State<Museums> createState() => _MuseumsState();
}

class _MuseumsState extends State<Museums> {
  List data = [
    [
      "Winter Palace of Bogd khaan",
      "http://159.223.56.204:8000/asset/BogdKhaanMuseum (1 of 1).jpg",
    ],
    [
      "Chinggis Khaan Museum",
      "http://159.223.56.204:8000/asset/Chinggis%20(4 of 4).jpg",
    ],
    [
      "National Museum",
      "http://159.223.56.204:8000/asset/Ub/Museums/1/NationalMuseum/Undesnii%20Museum%20(1%20of%201).jpg",
    ],
    [
      "Choijin Lama Temple museum",
      "http://159.223.56.204:8000/asset/Ub/Museums/2/ChoijinLama/q (1 of 1).jpg",
    ],
    [
      "Puzzle Museum",
      "http://159.223.56.204:8000/asset/Ub/Museums/2/PuzzleMuseum/PuzzleMuseum%20(1%20of%201).jpg",
    ],
    [
      "Ulaanbaatar City Museum",
      "http://159.223.56.204:8000/asset/Ub/Museums/2/UlaanbaatarCityMuseum/UlaanbaatarCityMuseum%20(7%20of%207).jpg",
    ],
    [
      "Jukow Museum",
      "http://159.223.56.204:8000/asset/Ub/Museums/3/JukowMuseum/JukowMuseum%20(1%20of%201)-2.jpg",
    ],
    [
      "Military Museum",
      "http://159.223.56.204:8000/asset/Ub/Museums/3/MilitaryMuseum/MilitaryMuseum%20(1%20of%201).jpg",
    ],
    [
      "Theatre Museum",
      "http://159.223.56.204:8000/asset/Ub/Museums/3/TheatreMuseum/TheatreMuseum%20(1%20of%201).jpg",
    ],
    [
      "Zanabazar Museum",
      "http://159.223.56.204:8000/asset/Ub/Museums/3/ZanabazarMuseum/ZanabazarMuseum%20(1%20of%201).jpg",
    ],
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Museums',
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
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              // CHINGGISKHAANMUSEUM //
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ChinggisKhaanMuseum(),
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(data[1][1]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: size.width,
                  height: size.width * 0.45,
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
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.all(15),
                        child: Text(
                          data[1][0],
                          style: const TextStyle(
                            fontSize: 16,
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
              // NATIONALMUSEUM //
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NationalMuseum(),
                  ),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(data[2][1]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: size.width,
                  height: size.width * 0.45,
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
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.all(15),
                        child: Text(
                          data[2][0],
                          style: const TextStyle(
                            fontSize: 16,
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
              // BOGDKHAANMUSEUM //
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const BogdKhan()),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(data[0][1]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: size.width,
                  height: size.width * 0.45,
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
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.all(15),
                        child: Text(
                          data[0][0],
                          style: const TextStyle(
                            fontSize: 16,
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
              // CHOIJIN //
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ChoijinLama()),
                ),
                child: Container(
                  alignment: Alignment.bottomLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(data[3][1]),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: size.width,
                  height: size.width * 0.45,
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
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsetsDirectional.all(15),
                        child: Text(
                          data[3][0],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //  PUZZLE //
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PuzzleMuseum(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(data[4][1]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width * 0.45,
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
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              data[4][0],
                              style: const TextStyle(
                                fontSize: 16,
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
                        builder: (context) => const ZanabazarMuseum(),
                      ),
                    ),
                    //  ZANABAZARMUSEUM //
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(data[9][1]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width * 0.45,
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
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              data[9][0],
                              style: const TextStyle(
                                fontSize: 16,
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
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const UlaanbaatarCityMuseum(),
                      ),
                    ),
                    //  ULAANBAATARCITYMUSEUM
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(data[5][1]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width * 0.45,
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
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              data[5][0],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // JUKOWNUSEUM //
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const JukowMuseum(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(data[6][1]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width * 0.45,
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
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              data[6][0],
                              style: const TextStyle(
                                fontSize: 16,
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
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MilitaryMuseum(),
                      ),
                    ),
                    //  MILITARYMUSEUM //
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(data[7][1]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width * 0.45,
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
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              data[7][0],
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // THEATREMUSEUM //
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const TheatreMuseum(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: NetworkImage(data[8][1]),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width * 0.45,
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
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              data[8][0],
                              style: const TextStyle(
                                fontSize: 16,
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
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
