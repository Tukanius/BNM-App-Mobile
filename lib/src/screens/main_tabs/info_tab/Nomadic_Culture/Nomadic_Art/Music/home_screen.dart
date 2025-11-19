import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Music/product/bishguur.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Music/product/boginoduu.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Music/product/epicstory.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Music/product/khoomei.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Music/product/khuuchir.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Music/product/limbe.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Music/product/magtaal.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Music/product/morin_huur.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Music/product/shaman.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Music/product/tovshuur.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Music/product/urtiinduu.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Art/Music/product/yatga.dart';
import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class Music extends StatefulWidget {
  const Music({super.key});

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Music',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /*================================================== ROW 1 ================================================================*/
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MorinHuur()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: NetworkImage(AppStyle.morinhuur),
                      ),
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Yatga()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: NetworkImage(AppStyle.yatga),
                      ),
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Khuuchir()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: NetworkImage(AppStyle.huuchir),
                      ),
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text('Morin Khuur', textAlign: TextAlign.center),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text('Yatga', textAlign: TextAlign.center),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text('Khuuchir', textAlign: TextAlign.center),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /*================================================== ROW 2 ================================================================*/
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Limbe()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: NetworkImage(AppStyle.limbe),
                      ),
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Tovshuur()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: NetworkImage(AppStyle.tovshuur),
                      ),
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Bishguur()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: NetworkImage(AppStyle.bishguur),
                      ),
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text('Limbe', textAlign: TextAlign.center),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text('Tovshuur', textAlign: TextAlign.center),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text('Bishguur', textAlign: TextAlign.center),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /*================================================== ROW 3 ================================================================*/
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ShamanDrum()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: NetworkImage(AppStyle.shamandrum),
                      ),
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UrtiinDuu()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: NetworkImage(AppStyle.urtiinduu),
                      ),
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const BoginoDuu()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: NetworkImage(AppStyle.boginoduu),
                      ),
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text('Shaman Drum', textAlign: TextAlign.center),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text('Long Song', textAlign: TextAlign.center),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text('Short Song', textAlign: TextAlign.center),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /*================================================== ROW 4 ================================================================*/
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Khoomei()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: NetworkImage(AppStyle.throat),
                      ),
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Magtaal()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: NetworkImage(AppStyle.magtaal),
                      ),
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Tuuli()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: NetworkImage(AppStyle.tuuli),
                      ),
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text(
                    'Throat Singing',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text(
                    'Praise Songs',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text(
                    'Epic Storytelling',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
          ],
        ),
      ),
    );
  }
}
