// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Painting/product/contemporary.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Painting/product/miniature.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Painting/product/murals.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Painting/product/thangka.dart';
import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class Painting extends StatefulWidget {
  const Painting({super.key});

  @override
  State<Painting> createState() => _PaintingState();
}

class _PaintingState extends State<Painting> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Painting',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
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
                    image: NetworkImage(AppStyle.painting),
                    fit: BoxFit.cover,
                  ),
                ),
                width: size.width,
                height: size.width * 0.9,
              ),
              const SizedBox(height: 10),
              const Text(
                'Mongolian painting is a vivid reflection of the country`s rich cultural heritage, encapsulating its history, spirituality, and the profound bond between its people and the natural world. The tradition of painting in Mongolia spans from ancient times to the present, showcasing a diverse array of styles and subjects that include the spiritual and religious paintings of Tibetan Buddhism, the intricate designs of traditional Mongolian motifs, and the dynamic expressions of contemporary Mongolian art.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ThangkaPainting(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(AppStyle.thangka),
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
                              Colors.black12.withOpacity(0.005),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Thangka Painting',
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
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MiniaturePainting(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(AppStyle.miniature),
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
                              Colors.black12.withOpacity(0.005),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Miniature Painting',
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
                        builder: (context) => const ContemporaryPainting(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(AppStyle.contemporary),
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
                              Colors.black12.withOpacity(0.005),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Contemporary Mongolian Painting',
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
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MuralsPainting(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(AppStyle.murals),
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
                              Colors.black12.withOpacity(0.005),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Murals and Rock Art',
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
