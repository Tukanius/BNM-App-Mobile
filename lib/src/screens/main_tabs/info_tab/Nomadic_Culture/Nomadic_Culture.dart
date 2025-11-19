// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Clothing/clothing.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Crafting/crarfing.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Five_Snouts/five_snouts.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Food/food.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Ger/ger.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/nomadic_art.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Sports_Of_Mongolia/sports_of_mongolia.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/5HoshuuMal/home_screen.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/Ger/home_screen.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/Hool/home_screen.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/Huwtsas/home_screen.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/Crafting/home_screen.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/Sport/home_screen.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/Urlag/home_screen.dart';

class NomadicCulture extends StatefulWidget {
  const NomadicCulture({super.key});

  @override
  State<NomadicCulture> createState() => _NomadicCultureState();
}

class _NomadicCultureState extends State<NomadicCulture> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            // Top Image + Back Button
            SizedBox(
              width: size.width,
              height: size.height * 0.3,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    'http://159.223.56.204:8000/asset/NLS.jpg',
                    fit: BoxFit.cover,
                  ),
                  SafeArea(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: IconButton(
                          onPressed: () => Navigator.pop(context),
                          icon: Icon(
                            Icons.arrow_back_rounded,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Nomadic Culture',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  const ReadMoreText(
                    'In modern Mongolia, despite the increasing urbanization and development, '
                    'a significant portion of the population still embraces a nomadic lifestyle. '
                    'The modern nomadic lifestyle in Mongolia is an intriguing blend of traditional '
                    'practices and contemporary adaptations, showcasing the resilience of nomadic '
                    'culture in the face of changing times. Nomadic herders, known as "herders," '
                    'continue to move with their livestock, seeking suitable pastureland and water sources. '
                    'While the traditional ger (yurt) remains a central feature of their lifestyle, some '
                    'herders have incorporated modern elements into their mobile dwellings, such as solar '
                    'panels to generate electricity and satellite dishes for communication and entertainment. '
                    'This integration of technology allows herders to stay connected to the outside world even '
                    'while on the move. Mobile phones have become an essential tool for modern nomads, providing '
                    'them with a means of communication and access to vital weather forecasts, market information, '
                    'and emergency services...',
                    trimLines: 5,
                    trimMode: TrimMode.Line,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontWeight: FontWeight.w300),
                  ),

                  const SizedBox(height: 20),

                  // Ger
                  _buildCard(
                    size,
                    'http://159.223.56.204:8000/asset/ThumnbailApp/Ger.jpg',
                    'Ger',
                    const Ger(),
                  ),
                  const SizedBox(height: 10),

                  // Food + Art / Five Snouts + Clothing
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          _buildCard(
                            size,
                            'http://159.223.56.204:8000/asset/ThumnbailApp/Food.jpg',
                            'Food',
                            const Food(),
                            isHalf: true,
                          ),
                          const SizedBox(height: 10),
                          _buildCard(
                            size,
                            'http://159.223.56.204:8000/asset/ThumnbailApp/Nomadic Art.jpg',
                            'Nomadic Art',
                            const NomadicArt(),
                            isHalf: true,
                            doubleHeight: true,
                          ),
                          const SizedBox(height: 10),
                          _buildCard(
                            size,
                            'http://159.223.56.204:8000/asset/ThumnbailApp/Sports.jpg',
                            'Sports of Mongolia',
                            const SportsOfMongolia(),
                            isHalf: true,
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          _buildCard(
                            size,
                            'http://159.223.56.204:8000/asset/ThumnbailApp/FiveSnouts.jpg',
                            'Five Snouts',
                            const FiveSnouts(),
                            isHalf: true,
                            doubleHeight: true,
                          ),
                          const SizedBox(height: 10),
                          _buildCard(
                            size,
                            'http://159.223.56.204:8000/asset/ThumnbailApp/Clothing.jpg',
                            'Clothing',
                            const ClothingInfo(),
                            isHalf: true,
                          ),
                          const SizedBox(height: 10),
                          _buildCard(
                            size,
                            'http://159.223.56.204:8000/asset/ThumnbailApp/Crafting.jpg',
                            'Crafting',
                            const Crarfing(),
                            isHalf: true,
                          ),
                        ],
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

  // Reusable card widget
  Widget _buildCard(
    Size size,
    String imageUrl,
    String title,
    Widget page, {
    bool isHalf = false,
    bool doubleHeight = false,
  }) {
    return GestureDetector(
      onTap: () =>
          Navigator.push(context, MaterialPageRoute(builder: (_) => page)),
      child: Container(
        alignment: Alignment.bottomLeft,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(imageUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        width: isHalf ? size.width * 0.44 : size.width,
        height: size.width * (isHalf ? (doubleHeight ? 0.9 : 0.44) : 0.44),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w900,
              color: Colors.white,
              shadows: [
                Shadow(
                  blurRadius: 5,
                  color: Colors.black,
                  offset: Offset(1, 1),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
