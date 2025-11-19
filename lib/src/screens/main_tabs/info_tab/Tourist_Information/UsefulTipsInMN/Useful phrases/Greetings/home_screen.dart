import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Greetings extends StatefulWidget {
  const Greetings({super.key});

  @override
  State<Greetings> createState() => _GreetingsState();
}

class _GreetingsState extends State<Greetings> {
  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Greetings',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
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
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: HexColor('#E8EFFF'),
                    ),
                    width: size.width,
                    height: size.width * 0.15,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 0.03,
                        right: size.width * 0.170,
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hi',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            'Sain uu?',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    width: size.width * 0.15,
                    height: size.width * 0.15,
                    child: IconButton(
                      onPressed: () {
                        // final player = AudioPlayer();
                        // player.play(AssetSource('audioo.mp3'));
                      },
                      icon: Icon(
                        Icons.volume_down_sharp,
                        color: HexColor('#013B7D'),
                        size: 35,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
    // Scaffold(
    //   body: Center(
    //     child: TextButton(
    //       style: ButtonStyle(
    //         enableFeedback: false
    //       ),
    //       onPressed: () {
    //         final player = AudioPlayer();
    //         player.play(AssetSource('audioo.mp3'));
    //       }, child: Text('Click')),
    //   ),
    // );
  }
}
