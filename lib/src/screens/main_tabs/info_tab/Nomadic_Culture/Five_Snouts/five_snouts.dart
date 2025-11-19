import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Five_Snouts/Cattle.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Five_Snouts/camel.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Five_Snouts/goat.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Five_Snouts/horse.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Five_Snouts/sheep.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/5HoshuuMal/camel.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/5HoshuuMal/cattle.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/5HoshuuMal/goat.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/5HoshuuMal/horse.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/5HoshuuMal/sheep.dart';

class FiveSnouts extends StatefulWidget {
  const FiveSnouts({super.key});

  @override
  State<FiveSnouts> createState() => _FiveSnoutsState();
}

class _FiveSnoutsState extends State<FiveSnouts> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Five Snouts',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  const Text(
                    textAlign: TextAlign.justify,
                    'The Five Snouts—horses, cattle, camels, sheep, and goats—are the backbone of Mongolia’s nomadic culture, symbolizing survival, wealth, and deep connection to nature. For centuries, these animals have been essential to the livelihood of nomadic herders, providing everything from food and clothing to transportation and materials for shelter. Each of the five animals has a distinct role in Mongolian life. Horses are revered for their endurance and mobility, enabling the nomads to travel vast distances across the steppes. Cattle, including yaks, are a key source of dairy and meat, while their hides are used in clothing and tools. Camels, especially in the Gobi, are prized for their ability to carry heavy loads and survive long periods without water, making them essential for long-distance trade. Sheep and goats, meanwhile, are valued for their wool and cashmere, as well as their meat, which provides sustenance throughout the year. The concept of the Five Snouts highlights the harmonious balance between Mongolian herders and their environment. These animals not only sustain life but also reflect the resilience, adaptability, and resourcefulness of the nomadic way of living, where survival depends on understanding and respecting the natural cycles of the land and animals.',
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      PageTransition(
                        child: const Horse(),
                        type: PageTransitionType.bottomToTop,
                        duration: 400.ms,
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            'http://159.223.56.204:8000/asset/ThumnbailApp/Horses.jpg',
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
                          'Horses',
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
                            child: const Cattle(),
                            type: PageTransitionType.leftToRightWithFade,
                            duration: 400.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/ThumnbailApp/Cattle.jpg',
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
                              'Cattle',
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
                            child: const Sheep(),
                            type: PageTransitionType.rightToLeftWithFade,
                            duration: 400.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/ThumnbailApp/Sheep.jpg',
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
                              'Sheep',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          PageTransition(
                            child: const Goat(),
                            type: PageTransitionType.leftToRightWithFade,
                            duration: 400.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/ThumnbailApp/Goat.jpg',
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
                              'Goat',
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
                            child: const Camel(),
                            type: PageTransitionType.rightToLeftWithFade,
                            duration: 400.ms,
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/ThumnbailApp/Camel.jpg',
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
                              'Camel',
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
          ],
        ),
      ),
    );
  }
}
