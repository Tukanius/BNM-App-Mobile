import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Tourist_Information/UsefulTipsInMN/Local%20Transportations/home_screen.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Tourist_Information/UsefulTipsInMN/Mobile%20network/home_screen.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Tourist_Information/UsefulTipsInMN/PaymentsInMongolia/home_screen.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Tourist_Information/UsefulTipsInMN/Useful%20phrases/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class UsefulTipsInMongolia extends StatefulWidget {
  const UsefulTipsInMongolia({super.key});

  @override
  State<UsefulTipsInMongolia> createState() => _UsefulTipsInMongoliaState();
}

class _UsefulTipsInMongoliaState extends State<UsefulTipsInMongolia> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Useful tips in Mongolia',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  // onTap: () => Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const UsefulTipsInMongolia(),
                  //   ),
                  //   // VISIT UB DUUSAAD SHILJUULNE
                  // ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                    child: Icon(
                      Icons.location_city_rounded,
                      size: 45,
                      color: HexColor('#136A3F'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LocalTransportations(),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                    child: Icon(
                      Icons.directions_bus_rounded,
                      size: 45,
                      color: HexColor('#F5BF15'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentsInMongolia(),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                    child: Icon(
                      Icons.credit_card,
                      size: 45,
                      color: HexColor('#2984B0'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: size.width * 0.3,
                  child: const Text(
                    'Information centers in UB',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text(
                    'Local Transportations',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text(
                    'Payments in Mongolia',
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MobileNetwork(),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                    child: Icon(
                      Icons.phone_android_rounded,
                      size: 45,
                      color: HexColor('#B91332'),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UsefulPhrases(),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      color: Colors.white,
                    ),
                    width: size.width * 0.3,
                    height: size.width * 0.3,
                    child: Icon(
                      Icons.abc,
                      size: 45,
                      color: HexColor('#F07E26'),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: size.width * 0.3,
                  child: const Text(
                    'Mobile network',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text(
                    'Useful phrases',
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  width: size.width * 0.3,
                  child: const Text('', textAlign: TextAlign.center),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
