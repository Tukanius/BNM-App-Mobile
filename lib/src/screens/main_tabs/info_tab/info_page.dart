// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Religion/ReligionHome.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Tourist_Information/ToursitInformation.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Nomadic_Culture/Nomadic_Culture.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:page_transition/page_transition.dart';

// Энд чиний хуучин скрийнүүдийг import хийж өгсөн байгаа
// import 'package:visitub/screens/Info/Content/home_screen.dart';
// import 'package:visitub/screens/Info/History/home_screen.dart';
// import 'package:visitub/screens/Info/NomadicLifeStyle/home_screen.dart';
// import 'package:visitub/screens/Info/Religion/home_screen.dart';
// import 'package:visitub/screens/Info/TouristInformation/home_screen.dart';

class InfoPage extends StatefulWidget {
  static const routeName = "InfoPage";
  const InfoPage({super.key});

  @override
  State<InfoPage> createState() => _InfoPageState();
}

class _InfoPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Information',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ).animate().scaleY(delay: 400.ms, duration: 500.ms),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // --- Nomadic Culture ---
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    PageTransition(
                      child: const NomadicCulture(),
                      type: PageTransitionType.fade,
                      duration: 900.ms,
                    ),
                  ),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        image: NetworkImage(
                          'http://159.223.56.204:8000/asset/images/Nomadic Culture.jpg',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    width: size.width,
                    height: size.width * 0.45,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: [
                            Colors.black87,
                            Colors.black12.withOpacity(0.005),
                          ],
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: const Text(
                            'Nomadic Culture',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ).animate().fade(delay: 800.ms, duration: 800.ms),
                        ),
                      ),
                    ),
                  ),
                ).animate().fadeIn(delay: 300.ms, duration: 800.ms),
                const SizedBox(height: 5),

                // --- History + Religion / Tourist Information ---
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        // History
                        GestureDetector(
                          // onTap: () => Navigator.push(
                          //   context,
                          //   PageTransition(
                          //     child: const HistoryInfo(),
                          //     type: PageTransitionType.fade,
                          //     duration: 900.ms,
                          //   ),
                          // ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'http://159.223.56.204:8000/asset/infoHistory.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            width: size.width * 0.45,
                            height: size.width * 0.44,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.center,
                                  colors: [
                                    Colors.black87,
                                    Colors.black12.withOpacity(0.005),
                                  ],
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child:
                                      const Text(
                                        'History',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ).animate().fade(
                                        delay: 800.ms,
                                        duration: 800.ms,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ).animate().fadeIn(delay: 300.ms, duration: 800.ms),
                        const SizedBox(height: 5),

                        // Religion
                        GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            PageTransition(
                              child: const ReligionHome(),
                              type: PageTransitionType.fade,
                              duration: 900.ms,
                            ),
                          ),
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: const DecorationImage(
                                image: NetworkImage(
                                  'http://159.223.56.204:8000/asset/infoReligion.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            width: size.width * 0.45,
                            height: size.width * 0.44,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.center,
                                  colors: [
                                    Colors.black87,
                                    Colors.black12.withOpacity(0.1),
                                  ],
                                ),
                              ),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(8),
                                  child:
                                      const Text(
                                        'Religion',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ).animate().fade(
                                        delay: 800.ms,
                                        duration: 800.ms,
                                      ),
                                ),
                              ),
                            ),
                          ),
                        ).animate().fadeIn(delay: 300.ms, duration: 800.ms),
                      ],
                    ),

                    // Tourist Info
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        PageTransition(
                          child: const ToursitInformation(),
                          type: PageTransitionType.fade,
                          duration: 900.ms,
                        ),
                      ),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: NetworkImage(
                              'http://159.223.56.204:8000/asset/zadgai/Thumbnails/Tourist Information.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        width: size.width * 0.46,
                        height: size.width * 0.89,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.center,
                              colors: [
                                Colors.black87,
                                Colors.black12.withOpacity(0.1),
                              ],
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: const Text(
                                'Tourist information',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ).animate().fade(delay: 800.ms, duration: 800.ms),
                            ),
                          ),
                        ),
                      ),
                    ).animate().fadeIn(delay: 300.ms, duration: 800.ms),
                  ],
                ),
                const SizedBox(height: 150),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
