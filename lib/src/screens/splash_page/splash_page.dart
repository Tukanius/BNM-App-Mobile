import 'dart:async';

import 'package:after_layout/after_layout.dart';
import 'package:bnm_flutter/src/main_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  static const routeName = "SplashPage";
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with AfterLayoutMixin {
  @override
  afterFirstLayout(BuildContext context) async {
    Timer(const Duration(seconds: 2), () {
      Navigator.of(context).pushNamed(
        MainPage.routeName,
        arguments: MainPageArguments(changeIndex: 0),
      );
    });
    // try {
    //   user = await AuthApi().me(false);

    //   user.userStatus == "VERIFIED"
    //       ? await Navigator.of(context).pushNamed(
    //         MainPage.routeName,
    //         arguments: MainPageArguments(changeIndex: 0),
    //       )
    //       : await Navigator.of(context).pushNamed(RegisterInfo.routeName);
    // } catch (e) {
    //   await Navigator.of(context).pushNamed(
    //     MainPage.routeName,
    //     arguments: MainPageArguments(changeIndex: 0),
    //   );
    // }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Image(
        image: const NetworkImage(
          'http://159.223.56.204:8000/asset/Other/splash.jpg',
        ),
        width: size.width,
        height: size.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
