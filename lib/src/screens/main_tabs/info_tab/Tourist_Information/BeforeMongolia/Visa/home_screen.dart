// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Visa extends StatefulWidget {
  const Visa({super.key});

  @override
  State<Visa> createState() => _VisaState();
}

class _VisaState extends State<Visa> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Visa',
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
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const VisaTypes(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.18,
                            height: size.width * 0.18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#F5BF15'),
                            ),
                            child: const Icon(
                              Icons.credit_card_sharp,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const VisaDuration(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.18,
                            height: size.width * 0.18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#F5BF15'),
                            ),
                            child: const Icon(
                              Icons.av_timer_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const VisaApp(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.18,
                            height: size.width * 0.18,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#F5BF15'),
                            ),
                            child: const Icon(
                              Icons.app_shortcut_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
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
                  SizedBox(
                    width: size.width * 0.28,
                    child: const Text(
                      'Visa types',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.28,
                    child: const Text(
                      'Visa Duration',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: size.width * 0.28,
                    child: const Text(
                      'Visa Application',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'A visa to Mongolia is a legal document issued by the Mongolian government that allows foreign nationals to enter and stay within the country for a specific period. Mongolia is a fascinating and relatively unexplored destination, known for its vast landscapes, nomadic culture, and rich history. Whether you`re planning a short visit, an extended stay, or even business in Mongolia, understanding the visa requirements and application process is essential.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                'A visa to Mongolia is a legal document issued by the Mongolian government that allows foreign nationals to enter and stay within the country for a specific period. Mongolia is a fascinating and relatively unexplored destination, known for its vast landscapes, nomadic culture, and rich history. Whether you`re planning a short visit, an extended stay, or even business in Mongolia, understanding the visa requirements and application process is essential.',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: AssetImage(AppStyle.evisa),
                    fit: BoxFit.cover,
                  ),
                ),
                width: size.width,
                height: size.width * 0.3,
              ),
              // launchButton(
              //   icon: Icons.language,
              //   title: 'Visit Evisa.mn',
              //   onPressed: () {
              //     launcher.launchUrl(Uri.parse('https://www.evisa.mn/en'));
              //   },
              // ),
              // launchButton(
              //   text: AppStyle.evisa,
              //   onPressed: () {
              //   launcher.launchUrl(
              //     Uri.parse('https://www.evisa.mn/en'),
              //     mode: launcher.LaunchMode.externalApplication
              //   );
              // },)
            ],
          ),
        ),
      ),
    );
  }

  Widget launchButton({
    required IconData icon,
    required String title,
    required Function() onPressed,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateColor.resolveWith(
            (states) => Colors.grey.shade200,
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.black),
            Text(
              title,
              style: const TextStyle(fontSize: 16, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

class VisaTypes extends StatefulWidget {
  const VisaTypes({super.key});

  @override
  State<VisaTypes> createState() => _VisaTypesState();
}

class _VisaTypesState extends State<VisaTypes> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.07,
        vertical: size.width * 0.3,
      ),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#F5BF15'),
                  ),
                  child: const Icon(
                    Icons.credit_card_sharp,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Visa types',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Tourist Visa:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'This type of visa is suitable for travelers planning to visit Mongolia for tourism and sightseeing purposes.',
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Business Visa:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'If you intend to engage in business activities, meetings, or conferences in Mongolia, you will need a business visa.',
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                const Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Transit Visa:',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Travelers passing through Mongolia on their way to another country may require a transit visa.',
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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

class VisaDuration extends StatefulWidget {
  const VisaDuration({super.key});

  @override
  State<VisaDuration> createState() => _VisaDurationState();
}

class _VisaDurationState extends State<VisaDuration> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.width * 0.5,
      ),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#F5BF15'),
                  ),
                  child: const Icon(
                    Icons.av_timer_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Visa Duration',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  'The duration of a Mongolian visa can vary based on your specific purpose for visiting. Tourist visas typically allow stays of 30, 60, or up to 90 days, while business visas can be issued for up to one year.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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

class VisaApp extends StatefulWidget {
  const VisaApp({super.key});

  @override
  State<VisaApp> createState() => _VisaAppState();
}

class _VisaAppState extends State<VisaApp> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.width * 0.45,
      ),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#F5BF15'),
                  ),
                  child: const Icon(
                    Icons.app_shortcut_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Visa Application',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  'To apply for a Mongolian visa, you will typically need to submit your application to the Mongolian Embassy or Consulate in your home country. Some travelers from certain countries are eligible for visa-free entry or a visa on arrival for short visits, but it`s essential to check the current regulations and requirements before your trip.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
