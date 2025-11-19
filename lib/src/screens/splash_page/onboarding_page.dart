// ignore_for_file: deprecated_member_use

import 'dart:io';

// import 'package:bnm_flutter/components/custom_button.dart/custom_button.dart';
import 'package:bnm_flutter/components/ui/color.dart';
import 'package:bnm_flutter/src/screens/splash_page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingPage extends StatefulWidget {
  static const routeName = "OnboardingPage";
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _controller = PageController();
  Future<void> _completeOnboarding(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('seenOnboarding', true);
    Navigator.of(context).pushNamed(SplashPage.routeName);
  }

  final List<Map<String, String>> slides = [
    {
      'image': 'assets/model/welcome.png',
      'title': 'Welcome to Mongolia',
      'subtitle':
          'Save your data, watch offline on a plane, train, or submarine...',
    },
    {
      'image': 'assets/images/first_intro.png',
      'title': 'Discover',
      'subtitle': 'Explore new places easily and save your favorites.',
    },
    {
      'image': 'assets/images/second_intro.png',
      'title': 'Enjoy',
      'subtitle': 'Have fun while learning about Mongolia!',
    },
  ];
  final dots = 3;
  int currentIndex = 0;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          if (currentIndex == 0) ...[
            Container(
              height: size.height,
              width: size.width,
              child: Image.asset('assets/model/ellipse.png', fit: BoxFit.fill),
            ),
            Container(
              height: size.height,
              width: size.width,
              child: Image.asset('assets/model/ellipse1.png', fit: BoxFit.fill),
            ),
          ],
          PageView.builder(
            // physics: NeverScrollableScrollPhysics(),
            controller: _controller,
            itemCount: slides.length,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemBuilder: (context, index) {
              final slide = slides[index];
              return Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  currentIndex == 0
                      ? Image.asset(slide['image']!)
                      : Image.asset(
                          slide['image']!,
                          fit: BoxFit.cover,
                          width: size.width,
                        ),

                  // Container(
                  //     height: 500,
                  //     // width: 500,
                  //     decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //         image: AssetImage(slide['image']!),
                  //         fit: BoxFit.cover,
                  //       ),
                  //     ),
                  //   ),
                  SizedBox(height: 24),
                  Text(
                    slide['title']!,
                    style: TextStyle(
                      color: zeroBlack,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      slide['subtitle']!,
                      style: TextStyle(
                        color: zeroBlack,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            bottom: Platform.isIOS ? MediaQuery.of(context).padding.bottom : 24,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Container(
                  height: 14,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: pagerGray,
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: List.generate(
                      slides.length,
                      (index) => AnimatedContainer(
                        duration: Duration(milliseconds: 300),
                        margin: EdgeInsets.symmetric(horizontal: 4),
                        width: currentIndex == index ? 14 : 4,
                        height: 4,
                        decoration: BoxDecoration(
                          color: currentIndex == index ? bgWelcomeRed : white,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(width: 16),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          if (currentIndex == slides.length - 1) {
                            _completeOnboarding(context);
                          } else {
                            _controller.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                          }
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [startColor, endColor],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                currentIndex == slides.length - 1
                                    ? 'Get Started'
                                    : 'Next',
                                // '123',
                                style: TextStyle(
                                  color: white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 16),

                    // CustomButton(
                    //   text: currentIndex == slides.length - 1
                    //       ? 'Get Started'
                    //       : 'Next',
                    //   onTap: () {
                    //     if (currentIndex == slides.length - 1) {
                    //       _completeOnboarding(context);
                    //     } else {
                    //       _controller.nextPage(
                    //         duration: Duration(milliseconds: 300),
                    //         curve: Curves.easeInOut,
                    //       );
                    //     }
                    //   },
                    //   loaderColor: white,
                    //   isLoading: false,
                    // ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
