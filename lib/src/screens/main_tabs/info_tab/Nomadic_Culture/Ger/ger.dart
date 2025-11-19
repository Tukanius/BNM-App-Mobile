// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:readmore/readmore.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Ger extends StatefulWidget {
  const Ger({super.key});

  @override
  State<Ger> createState() => _GerState();
}

class _GerState extends State<Ger> {
  List<String> imageList = [
    "http://159.223.56.204:8000/asset/NLS.jpg",
    "http://159.223.56.204:8000/asset/ger.jpg",
    "http://159.223.56.204:8000/asset/GerHome.jpg",
    "http://159.223.56.204:8000/asset/SelenaTravel.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    PageController controller_ = PageController();
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              height: size.height * 0.3,
              child: Stack(
                alignment: Alignment.center,
                fit: StackFit.expand,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: NetworkImage(
                          'http://159.223.56.204:8000/asset/ger.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(alignment: Alignment.center),
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
                            0,
                            0,
                            0,
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
                  ReadMoreText(
                    'A "ger," also known as a "yurt," is a traditional portable dwelling that has been used by the nomadic people of the Central Asian stincluding the Mongols, for centuries. It`s an iconic symbol of the Mongolian way of life and culture. A ger is a circular, tent-like strwith a collapsible wooden frame covered by layers of felt and fabric. The wooden lattice framework provides stability, and the layers of fefabric offer insulation and protection from the elements. Gers are désigned to be easily assembled and disassembled, making them well-suitthe nomadic lifestyle. The interior of a ger is often divided into sections',
                    trimLines: 5,
                    textAlign: TextAlign.justify,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: 'Showmore',
                    trimExpandedText: 'Showless',
                    lessStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade500,
                    ),
                    moreStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue.shade500,
                    ),
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 20),
                  const Column(
                    children: [
                      Text(
                        'Гэрийн мод',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const Hana()
                                .animate()
                                .fade(duration: 1000.ms, delay: 100.ms)
                                .moveY(delay: 200.ms, duration: 300.ms),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: const DecorationImage(
                                  image: NetworkImage(AppStyle.hana),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width: size.width * 0.3,
                              height: size.width * 0.3,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Хана',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const Haalga()
                                .animate()
                                .fade(duration: 1000.ms, delay: 100.ms)
                                .moveY(delay: 200.ms, duration: 300.ms),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: const DecorationImage(
                                  image: NetworkImage(AppStyle.haalga),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width: size.width * 0.3,
                              height: size.width * 0.3,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Хаалга',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const Toono()
                                .animate()
                                .fade(duration: 1000.ms, delay: 100.ms)
                                .moveY(delay: 200.ms, duration: 300.ms),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: const DecorationImage(
                                  image: NetworkImage(AppStyle.toono),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width: size.width * 0.3,
                              height: size.width * 0.3,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Тооно',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const Bagana()
                                .animate()
                                .fade(duration: 1000.ms, delay: 100.ms)
                                .moveY(delay: 200.ms, duration: 300.ms),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: const DecorationImage(
                                  image: NetworkImage(AppStyle.bagana),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width: size.width * 0.3,
                              height: size.width * 0.3,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Багана',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const Uni()
                                .animate()
                                .fade(duration: 1000.ms, delay: 100.ms)
                                .moveY(delay: 200.ms, duration: 300.ms),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: const DecorationImage(
                                  image: NetworkImage(AppStyle.uni),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width: size.width * 0.3,
                              height: size.width * 0.3,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Унь',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const Shal()
                                .animate()
                                .fade(duration: 1000.ms, delay: 100.ms)
                                .moveY(delay: 200.ms, duration: 300.ms),
                          );
                        },
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                image: const DecorationImage(
                                  image: NetworkImage(AppStyle.shal),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              width: size.width * 0.3,
                              height: size.width * 0.3,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'Шал',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                SizedBox(
                  height: size.width * 0.7,
                  width: MediaQuery.of(context).size.width,
                  child: PageView.builder(
                    itemCount: imageList.length,
                    controller: controller_,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 20),
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            // color: color[index],
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Image.network(
                            imageList[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: size.width * 0.62,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: SmoothPageIndicator(
                      controller: controller_,
                      count: imageList.length,
                      effect: const ScrollingDotsEffect(
                        activeDotScale: 1,
                        activeStrokeWidth: 1,
                        fixedCenter: true,
                        activeDotColor: Colors.red,
                        dotColor: Colors.grey,
                        dotHeight: 10,
                        dotWidth: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Hana extends StatefulWidget {
  const Hana({super.key});

  @override
  State<Hana> createState() => _HanaState();
}

class _HanaState extends State<Hana> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 150),
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
                const Align(
                  child: Text(
                    'Хана',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(AppStyle.hana),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: size.width,
                  height: size.width * 0.6,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Mongolia has a harsh climate with intense sunlight. Use sunscreen, sunglasses, and a wide-brimmed hat to protect against sunburns. They can happen really fast during a day hike, or spending time outdoors, even for just an afternoon. ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Haalga extends StatefulWidget {
  const Haalga({super.key});

  @override
  State<Haalga> createState() => _HaalgaState();
}

class _HaalgaState extends State<Haalga> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 150),
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
                const Align(
                  child: Text(
                    'Хаалга',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(AppStyle.haalga),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: size.width,
                  height: size.width * 0.6,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Mongolia has a harsh climate with intense sunlight. Use sunscreen, sunglasses, and a wide-brimmed hat to protect against sunburns. They can happen really fast during a day hike, or spending time outdoors, even for just an afternoon. ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Toono extends StatefulWidget {
  const Toono({super.key});

  @override
  State<Toono> createState() => _ToonoState();
}

class _ToonoState extends State<Toono> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 150),
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
                const Align(
                  child: Text(
                    'Тооно',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(AppStyle.toono),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: size.width,
                  height: size.width * 0.6,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Mongolia has a harsh climate with intense sunlight. Use sunscreen, sunglasses, and a wide-brimmed hat to protect against sunburns. They can happen really fast during a day hike, or spending time outdoors, even for just an afternoon. ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Bagana extends StatefulWidget {
  const Bagana({super.key});

  @override
  State<Bagana> createState() => _BaganaState();
}

class _BaganaState extends State<Bagana> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 150),
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
                const Align(
                  child: Text(
                    'Багана',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(AppStyle.bagana),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: size.width,
                  height: size.width * 0.6,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Mongolia has a harsh climate with intense sunlight. Use sunscreen, sunglasses, and a wide-brimmed hat to protect against sunburns. They can happen really fast during a day hike, or spending time outdoors, even for just an afternoon. ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Uni extends StatefulWidget {
  const Uni({super.key});

  @override
  State<Uni> createState() => _UniState();
}

class _UniState extends State<Uni> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 150),
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
                const Align(
                  child: Text(
                    'Унь',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(AppStyle.uni),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: size.width,
                  height: size.width * 0.6,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Mongolia has a harsh climate with intense sunlight. Use sunscreen, sunglasses, and a wide-brimmed hat to protect against sunburns. They can happen really fast during a day hike, or spending time outdoors, even for just an afternoon. ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Shal extends StatefulWidget {
  const Shal({super.key});

  @override
  State<Shal> createState() => _ShalState();
}

class _ShalState extends State<Shal> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 150),
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
                const Align(
                  child: Text(
                    'Шал',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(AppStyle.shal),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: size.width,
                  height: size.width * 0.6,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Mongolia has a harsh climate with intense sunlight. Use sunscreen, sunglasses, and a wide-brimmed hat to protect against sunburns. They can happen really fast during a day hike, or spending time outdoors, even for just an afternoon. ',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
