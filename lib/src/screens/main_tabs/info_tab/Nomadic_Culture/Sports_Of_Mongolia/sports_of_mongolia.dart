import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Sports_Of_Mongolia/Anklebone/home_screen.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Sports_Of_Mongolia/Archery/home_screen.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Sports_Of_Mongolia/HorseRacing/home_screen.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Sports_Of_Mongolia/Wrestling/home_screen.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Sports_Of_Mongolia/camel/homescreen.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Sports_Of_Mongolia/eaglehunting/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';

class SportsOfMongolia extends StatefulWidget {
  const SportsOfMongolia({super.key});

  @override
  State<SportsOfMongolia> createState() => _SportsOfMongoliaState();
}

class _SportsOfMongoliaState extends State<SportsOfMongolia> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Sport',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, size: 28, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: NetworkImage(
                      'http://159.223.56.204:8000/asset/mori.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                width: size.width,
                height: size.height * 0.3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: SizedBox(
                child: Column(
                  children: [
                    const Text(
                      textAlign: TextAlign.justify,
                      'Mongolian sports embody the resilience, skill, and heritage of a deeply rooted nomadic culture. Centered around traditional skills essential to survival and cultural pride, Mongolian sports have developed from practical and military training into celebrated national competitions. The renowned “Three Manly Games”—wrestling, horse racing, and archery—are highlights of Naadam, Mongolia`s largest festival, and reflect ancient practices of physical strength, precision, and agility honed over centuries. Beyond these, sports like ankle bone shooting and eagle hunting underscore a lifestyle in harmony with Mongolia’s vast landscapes and rich traditions. Today, these sports not only entertain but preserve and pass down Mongolian values, history, and identity, drawing admiration from spectators both locally and globally.',
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        PageTransition(
                          child: const Wrestling(),
                          type: PageTransitionType.bottomToTop,
                          duration: 400.ms,
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                              'http://159.223.56.204:8000/asset/ThumnbailApp/Wrestling.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width,
                        height: size.width * 0.44,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Wrestling',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            PageTransition(
                              child: const Archery(),
                              type: PageTransitionType.leftToRightWithFade,
                              duration: 300.ms,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'http://159.223.56.204:8000/asset/ThumnbailApp/Archery.jpg',
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
                                'Archery',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            PageTransition(
                              child: const EagleHunting(),
                              type: PageTransitionType.leftToRightWithFade,
                              duration: 300.ms,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'http://159.223.56.204:8000/asset/ThumnbailApp/Falconry.jpg',
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
                                'Falconry and Eagle Hunting',
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
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        PageTransition(
                          child: const HorseRacing(),
                          type: PageTransitionType.topToBottom,
                          duration: 400.ms,
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.bottomLeft,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: NetworkImage(
                              'http://159.223.56.204:8000/asset/ThumnbailApp/HorseRacing.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        width: size.width,
                        height: size.width * 0.44,
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Horse Racing',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            PageTransition(
                              child: const Anklebone(),
                              type: PageTransitionType.leftToRightWithFade,
                              duration: 400.ms,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'http://159.223.56.204:8000/asset/ThumnbailApp/AngleBoneShooting.jpg',
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
                                'Ankle Bone Shooting',
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            PageTransition(
                              child: const CamelRacing(),
                              type: PageTransitionType.leftToRightWithFade,
                              duration: 400.ms,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.bottomLeft,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'http://159.223.56.204:8000/asset/ThumnbailApp/CamelRacing.jpg',
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
                                'Camel Racing',
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
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
