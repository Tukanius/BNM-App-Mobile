import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Tourist_Information/BeforeMongolia/Transportation/transportation.dart';
import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({super.key});

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Transportation());
  }
}
