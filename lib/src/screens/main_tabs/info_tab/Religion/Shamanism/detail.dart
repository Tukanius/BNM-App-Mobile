import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class ShamanDetail extends StatefulWidget {
  const ShamanDetail({super.key});

  @override
  State<ShamanDetail> createState() => _ShamanDetailState();
}

class _ShamanDetailState extends State<ShamanDetail> {
  List<String> imageList = [
    "http://159.223.56.204:8000/asset/shamanism1.jpg",
    "http://159.223.56.204:8000/asset/shamanism2.jpg",
    "http://159.223.56.204:8000/asset/shamanism4.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                image: DecorationImage(
                    image: NetworkImage(
                        'http://159.223.56.204:8000/asset/shamanism1.jpg'),
                    fit: BoxFit.cover)),
            width: size.width,
            height: size.width * 0.65,
            child: SafeArea(
                child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_rounded)),
            )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: size.width * 0.22,
                      height: size.width * 0.22,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                                  'http://159.223.56.204:8000/asset/shamanism1.jpg'))),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'Болд Зайран',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width,
                  color: HexColor('#E8EFFF'),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        const Text(
                          'Great cashmere should be comfortable responsibly made, humane and in your budget—and at GOBI Cashmere we’ve proven that it can since 1981.',
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.mail,
                              color: Colors.blue.shade300,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text('gobicashmere.mn')
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.facebook,
                              color: Colors.blue.shade300,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text('Gobi Cashmere')
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.alarm,
                              color: Colors.blue.shade300,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Text(
                                'working time - Mon-Fri (08:30Am-18:00PM)')
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue.shade900),
              alignment: Alignment.center,
              width: size.width,
              height: size.width * 0.15,
              child: const Text(
                'Book appointment',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          )
        ],
      ),
    );
  }
}
