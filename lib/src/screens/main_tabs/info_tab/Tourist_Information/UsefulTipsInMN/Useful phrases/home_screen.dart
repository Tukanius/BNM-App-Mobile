import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Tourist_Information/UsefulTipsInMN/Useful%20phrases/Greetings/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class UsefulPhrases extends StatefulWidget {
  const UsefulPhrases({super.key});

  @override
  State<UsefulPhrases> createState() => _UsefulPhrasesState();
}

class _UsefulPhrasesState extends State<UsefulPhrases> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Useful phrases',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white12,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Greetings()),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                    child: Icon(
                      Icons.voice_chat,
                      size: 45,
                      color: HexColor('#F02310'),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                  ),
                  width: size.width * 0.3,
                  height: size.width * 0.3,
                  child: Icon(
                    Icons.local_taxi,
                    size: 45,
                    color: HexColor('#2984B0'),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                  ),
                  width: size.width * 0.3,
                  height: size.width * 0.3,
                  child: Icon(
                    Icons.color_lens,
                    size: 45,
                    color: HexColor('#F5BF15'),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: size.width * 0.3,
                  child: const Text('Greetings', textAlign: TextAlign.center),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text('Taxi', textAlign: TextAlign.center),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text('Colors', textAlign: TextAlign.center),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                  ),
                  width: size.width * 0.3,
                  height: size.width * 0.3,
                  child: Icon(
                    Icons.shopping_bag_rounded,
                    size: 45,
                    color: HexColor('#FF5F9D'),
                  ),
                ),
                GestureDetector(
                  // onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => UsefulPhrases(),)),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                    child: Icon(
                      Icons.format_list_numbered_outlined,
                      size: 45,
                      color: HexColor('#136A3F'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: size.width * 0.3,
                  child: const Text('Shopping', textAlign: TextAlign.center),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text('Numbers', textAlign: TextAlign.center),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text('', textAlign: TextAlign.center),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
