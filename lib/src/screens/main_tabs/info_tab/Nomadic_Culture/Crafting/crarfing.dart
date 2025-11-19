import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Crafting/cashmere.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Crafting/fur.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Crafting/gemstone.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Crafting/leather.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Crafting/wood.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Crafting/wool.dart';
import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/Crafting/product/cashmere.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/Crafting/product/fur.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/Crafting/product/gemstones.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/Crafting/product/leather.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/Crafting/product/wood.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/Crafting/product/wool.dart';
// import 'package:visitub/style/app_style.dart';

class Crarfing extends StatefulWidget {
  const Crarfing({super.key});

  @override
  State<Crarfing> createState() => _CrarfingState();
}

class _CrarfingState extends State<Crarfing> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Crafting',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: const DecorationImage(
                    image: NetworkImage(AppStyle.crafting),
                    fit: BoxFit.cover,
                  ),
                ),
                width: size.width,
                height: size.width * 0.9,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Mongolian handicrafts, deeply rooted in the nation`s nomadic traditions and natural landscape, are renowned for their diversity and the richness of materials used. Each material, from wool to gemstones, carries with it a part of Mongolia`s cultural heritage, shaping the crafts into tangible expressions of the country`s identity. Here is an in-depth look at the primary materials used in Mongolian craftsmanship and the variety of items crafted from them.',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Wool()),
                    ),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'http://159.223.56.204:8000/asset/Other/wool1.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width * 0.45,
                      height: size.height * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Wool',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Cashmere()),
                    ),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'http://159.223.56.204:8000/asset/Other/wool2.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width * 0.45,
                      height: size.height * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Cashmere',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Leather()),
                    ),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'http://159.223.56.204:8000/asset/Other/wool3.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width * 0.45,
                      height: size.height * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Leather',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Fur()),
                    ),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(
                            'http://159.223.56.204:8000/asset/Other/wool4.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width * 0.45,
                      height: size.height * 0.2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Fur',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const WoodInfo()),
                    ),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(AppStyle.wood),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width * 0.45,
                      height: size.height * 0.2,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Wood',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Gemstones(),
                      ),
                    ),
                    child: Container(
                      alignment: Alignment.bottomLeft,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: NetworkImage(AppStyle.gemstones),
                          fit: BoxFit.cover,
                        ),
                      ),
                      width: size.width * 0.45,
                      height: size.height * 0.2,
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Gemstones',
                          style: TextStyle(
                            fontSize: 18,
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
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
