// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/components/ui/color.dart';
import 'package:bnm_flutter/src/screens/main_tabs/accommodation_tab/accommodation_page.dart';
import 'package:bnm_flutter/src/screens/main_tabs/commercial_tab/commercial_page.dart';
import 'package:bnm_flutter/src/screens/main_tabs/destinations_tab/destinations_page.dart';
import 'package:bnm_flutter/src/screens/main_tabs/home_tab/home_page.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/info_page.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/visitub_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:flutter_svg/svg.dart';

class MainPageArguments {
  final int changeIndex;
  MainPageArguments({required this.changeIndex});
}

class MainPage extends StatefulWidget {
  final int changeIndex;

  static const routeName = "MainPage";
  const MainPage({super.key, required this.changeIndex});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late int _selectedIndex = widget.changeIndex;

  List<Widget> get widgetOptions => <Widget>[
    HomePage(onChange: (i) => onItemTapped(i)),
    AccommodationPage(),
    VisitubPage(),
    DestinationsPage(),
    InfoPage(),
    CommercialPage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final bool isKeyboardVisible = KeyboardVisibilityProvider.isKeyboardVisible(
      context,
    );
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: Center(child: widgetOptions.elementAt(_selectedIndex)),
        backgroundColor: white,
        extendBody: true,
        bottomNavigationBar: !isKeyboardVisible
            ? Container(
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: black.withOpacity(0.3),
                      blurRadius: 10,
                      offset: Offset(0, -1),
                    ),
                  ],
                ),
                padding: EdgeInsets.only(
                  top: 16,
                  bottom: 24,
                  right: 20,
                  left: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildNavItem(
                      iconPath: 'assets/svg/home.svg',
                      label: 'Home',
                      index: 0,
                      selectedIndex: _selectedIndex,
                      onTap: onItemTapped,
                    ),
                    SizedBox(width: 3),
                    _buildNavItem(
                      iconPath: 'assets/svg/accomodation.svg',
                      label: 'Accommodation',
                      index: 1,
                      selectedIndex: _selectedIndex,
                      onTap: onItemTapped,
                    ),
                    SizedBox(width: 3),
                    _buildNavItem(
                      iconPath: 'assets/svg/visitub.svg',
                      label: 'Visit UB',
                      index: 2,
                      selectedIndex: _selectedIndex,
                      onTap: onItemTapped,
                    ),
                    SizedBox(width: 3),
                    _buildNavItem(
                      iconPath: 'assets/svg/destination.svg',
                      label: 'Destinations',
                      index: 3,
                      selectedIndex: _selectedIndex,
                      onTap: onItemTapped,
                    ),
                    SizedBox(width: 3),
                    _buildNavItem(
                      iconPath: 'assets/svg/info.svg',
                      label: 'Info',
                      index: 4,
                      selectedIndex: _selectedIndex,
                      onTap: onItemTapped,
                    ),
                    SizedBox(width: 3),
                    _buildNavItem(
                      iconPath: 'assets/svg/comm.svg',
                      label: 'Commercial',
                      index: 5,
                      selectedIndex: _selectedIndex,
                      onTap: onItemTapped,
                    ),
                  ],
                ),
              )
            : null,
      ),
    );
  }

  Widget _buildNavItem({
    required String iconPath,
    required String label,
    required int index,
    required int selectedIndex,
    required Function(int) onTap,
  }) {
    return Expanded(
      child: InkWell(
        onTap: () => onTap(index),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: index == 1
                  ? SvgPicture.asset(
                      selectedIndex == index
                          ? iconPath
                          : 'assets/svg/accomodation_unselect.svg',
                      // color: selectedIndex == index ? null : gray600,
                    )
                  : SvgPicture.asset(
                      iconPath,
                      color: selectedIndex == index ? null : gray600,
                    ),
            ),
            SizedBox(height: 4),
            Text(
              label,
              style: TextStyle(
                color: selectedIndex == index ? blue : gray400,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
