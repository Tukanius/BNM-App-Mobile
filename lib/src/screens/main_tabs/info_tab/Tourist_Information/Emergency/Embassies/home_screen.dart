// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Embassies extends StatefulWidget {
  const Embassies({super.key});

  @override
  State<Embassies> createState() => _EmbassiesState();
}

class _EmbassiesState extends State<Embassies> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.3,
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  const Image(
                    image: NetworkImage(AppStyle.embessies),
                    fit: BoxFit.cover,
                  ),
                  const SafeArea(
                    child: Padding(
                      padding: EdgeInsets.only(top: 12),
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Text(
                          'Embassies',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SafeArea(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          size: 30,
                          color: const Color.fromARGB(
                            255,
                            255,
                            255,
                            255,
                          ).withOpacity(0.7),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: size.width * 0.2,
                        height: size.height * 0.17,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        child: GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (context) => const America(),
                            );
                          },
                          child: const Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                  'http://159.223.56.204:8000/asset/united states.png',
                                ),
                                width: 48,
                                height: 48,
                              ),
                              Text(
                                'Embassy of the United States of America',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const Russia(),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: size.width * 0.2,
                          height: size.height * 0.17,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: const Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                  'http://159.223.56.204:8000/asset/russia.png',
                                ),
                                width: 48,
                                height: 48,
                              ),
                              Text(
                                'Embassy of the Russian Federation',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const China(),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: size.width * 0.2,
                          height: size.height * 0.17,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: const Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                  'http://159.223.56.204:8000/asset/china.png',
                                ),
                                width: 48,
                                height: 48,
                              ),
                              Text(
                                'Embassy of  China',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const Japan(),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: size.width * 0.2,
                          height: size.height * 0.17,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: const Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                  'http://159.223.56.204:8000/asset/japan.png',
                                ),
                                width: 48,
                                height: 48,
                              ),
                              Text(
                                'Embassy of Japan',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const Korea(),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: size.width * 0.2,
                          height: size.height * 0.17,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: const Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                  'http://159.223.56.204:8000/asset/south korea.png',
                                ),
                                width: 48,
                                height: 48,
                              ),
                              Text(
                                'Embassy of the Korea',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const Germany(),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: size.width * 0.2,
                          height: size.height * 0.17,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: const Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                  'http://159.223.56.204:8000/asset/germany.png',
                                ),
                                width: 48,
                                height: 48,
                              ),
                              Text(
                                'Embassy of the Federal Republic of Germany',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const Turkey(),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: size.width * 0.2,
                          height: size.height * 0.17,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: const Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                  'http://159.223.56.204:8000/asset/turkey.png',
                                ),
                                width: 48,
                                height: 48,
                              ),
                              Text(
                                'Embassy of the Republic of Turkey',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const French(),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: size.width * 0.2,
                          height: size.height * 0.17,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: const Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                  'http://159.223.56.204:8000/asset/france.png',
                                ),
                                width: 48,
                                height: 48,
                              ),
                              Text(
                                'Embassy of the French Republic',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const UnitedKingdom(),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: size.width * 0.2,
                          height: size.height * 0.17,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          child: const Column(
                            children: [
                              Image(
                                image: NetworkImage(
                                  'http://159.223.56.204:8000/asset/united kingdom.png',
                                ),
                                width: 48,
                                height: 48,
                              ),
                              Text(
                                'Embassy of the United Kingdom',
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const India(),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      width: size.width * 0.2,
                      height: size.height * 0.17,
                      color: const Color.fromARGB(255, 255, 255, 255),
                      child: const Column(
                        children: [
                          Image(
                            image: NetworkImage(
                              'http://159.223.56.204:8000/asset/india.png',
                            ),
                            width: 48,
                            height: 48,
                          ),
                          Text(
                            'Embassy of the People`s Republic of India',
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
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

class America extends StatefulWidget {
  const America({super.key});

  @override
  State<America> createState() => _AmericaState();
}

class _AmericaState extends State<America> {
  String data = '+976 7007-6001';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 210),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.1),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'http://159.223.56.204:8000/asset/united states.png',
                  ),
                  radius: 45,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(
                        width: size.width,
                        child: const Text(
                          'Embassy of the United States of America',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Icon(Icons.phone),
                          const SizedBox(width: 10),
                          const Text('+976 7007-6001'),
                          const Spacer(),
                          IconButton(
                            onPressed: () {
                              Clipboard.setData(ClipboardData(text: data));
                            },
                            icon: const Icon(Icons.copy),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Denver Street #3, 11th Micro-District, Ulaanbaatar 14190, Mongolia',
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
        ),
      ),
    );
  }
}

class Russia extends StatefulWidget {
  const Russia({super.key});

  @override
  State<Russia> createState() => _RussiaState();
}

class _RussiaState extends State<Russia> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 210),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.1),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'http://159.223.56.204:8000/asset/russia.png',
                  ),
                  radius: 45,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(
                        width: size.width,
                        child: const Text(
                          'Embassy of the Russian Federation',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Icon(Icons.phone),
                          const SizedBox(width: 10),
                          const Text('+976 11 329350'),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.copy),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Enkhtaivan Avenue #15, Ulaanbaatar 15160, Mongolia',
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
        ),
      ),
    );
  }
}

class China extends StatefulWidget {
  const China({super.key});

  @override
  State<China> createState() => _ChinaState();
}

class _ChinaState extends State<China> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 210),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.1),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'http://159.223.56.204:8000/asset/china.png',
                  ),
                  radius: 45,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(
                        width: size.width,
                        child: const Text(
                          'Embassy of the People`s Republic of China',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Icon(Icons.phone),
                          const SizedBox(width: 10),
                          const Text('+976 11 329041'),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.copy),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Enkhtaivan Avenue #6, Ulaanbaatar 14170, Mongolia',
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
        ),
      ),
    );
  }
}

class Japan extends StatefulWidget {
  const Japan({super.key});

  @override
  State<Japan> createState() => _JapanState();
}

class _JapanState extends State<Japan> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 210),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.1),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'http://159.223.56.204:8000/asset/japan.png',
                  ),
                  radius: 45,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(
                        width: size.width,
                        child: const Text(
                          'Embassy of Japan',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Icon(Icons.phone),
                          const SizedBox(width: 10),
                          const Text('+976 11322125'),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.copy),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Seoul Street #11, 1st Khoroo, Chingeltei District, Ulaanbaatar 15160, Mongolia',
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
        ),
      ),
    );
  }
}

class Korea extends StatefulWidget {
  const Korea({super.key});

  @override
  State<Korea> createState() => _KoreaState();
}

class _KoreaState extends State<Korea> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 210),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.1),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'http://159.223.56.204:8000/asset/south korea.png',
                  ),
                  radius: 45,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(
                        width: size.width,
                        child: const Text(
                          'Embassy of the People`s Republic of Korea',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Icon(Icons.phone),
                          const SizedBox(width: 10),
                          const Text('+976 11 324303'),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.copy),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Olympic Street #16, Sukhbaatar District, Ulaanbaatar 14210, Mongolia',
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
        ),
      ),
    );
  }
}

class Germany extends StatefulWidget {
  const Germany({super.key});

  @override
  State<Germany> createState() => _GermanyState();
}

class _GermanyState extends State<Germany> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 210),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.1),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'http://159.223.56.204:8000/asset/germany.png',
                  ),
                  radius: 45,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(
                        width: size.width,
                        child: const Text(
                          'Embassy of the Federal Republic of Germany',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Icon(Icons.phone),
                          const SizedBox(width: 10),
                          const Text('+976 11 329833'),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.copy),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Enkhtaivan Avenue #34, Ulaanbaatar 14192, Mongolia',
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
        ),
      ),
    );
  }
}

class Turkey extends StatefulWidget {
  const Turkey({super.key});

  @override
  State<Turkey> createState() => _TurkeyState();
}

class _TurkeyState extends State<Turkey> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 210),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.1),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'http://159.223.56.204:8000/asset/turkey.png',
                  ),
                  radius: 45,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(
                        width: size.width,
                        child: const Text(
                          'Embassy of the Republic of Turkey',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Icon(Icons.phone),
                          const SizedBox(width: 10),
                          const Text('+976 11 320926'),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.copy),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Seoul Street #1, 1st Khoroo, Chingeltei District, Ulaanbaatar 14230',
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
        ),
      ),
    );
  }
}

class French extends StatefulWidget {
  const French({super.key});

  @override
  State<French> createState() => _FrenchState();
}

class _FrenchState extends State<French> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 210),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.1),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'http://159.223.56.204:8000/asset/france.png',
                  ),
                  radius: 45,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(
                        width: size.width,
                        child: const Text(
                          'Embassy of the French Republic',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Icon(Icons.phone),
                          const SizedBox(width: 10),
                          const Text('+976 11 312433'),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.copy),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Olympic Street #14, Sukhbaatar District, Ulaanbaatar 14190, Mongolia',
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
        ),
      ),
    );
  }
}

class UnitedKingdom extends StatefulWidget {
  const UnitedKingdom({super.key});

  @override
  State<UnitedKingdom> createState() => _UnitedKingdomState();
}

class _UnitedKingdomState extends State<UnitedKingdom> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 210),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.1),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'http://159.223.56.204:8000/asset/united kingdom.png',
                  ),
                  radius: 45,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(
                        width: size.width,
                        child: const Text(
                          'Embassy of the United Kingdom',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Icon(Icons.phone),
                          const SizedBox(width: 10),
                          const Text('+976 11 310603'),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.copy),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Seoul Street #19, Sukhbaatar District, Ulaanbaatar 14241, Mongolia',
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
        ),
      ),
    );
  }
}

class India extends StatefulWidget {
  const India({super.key});

  @override
  State<India> createState() => _IndiaState();
}

class _IndiaState extends State<India> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 210),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.1),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                    'http://159.223.56.204:8000/asset/india.png',
                  ),
                  radius: 45,
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    children: [
                      SizedBox(
                        width: size.width,
                        child: const Text(
                          'Embassy of the People`s Republic of India',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          const Icon(Icons.phone),
                          const SizedBox(width: 10),
                          const Text('+976 11 350116'),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.copy),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      const Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(
                              'Village No. 1, 15 Khan-Uul District, Ulaanbaatar, Mongolia',
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
        ),
      ),
    );
  }
}
