import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class Electronics extends StatefulWidget {
  const Electronics({super.key});

  @override
  State<Electronics> createState() => _ElectronicsState();
}

class _ElectronicsState extends State<Electronics> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                image: DecorationImage(
                  image: NetworkImage(AppStyle.electronics),
                  fit: BoxFit.cover,
                ),
              ),
              width: size.width,
              height: size.width * 0.8,
              child: SafeArea(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_rounded),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        'Camera and Gear',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35),
                    child: Text(
                      'As beautiful as Mongolia is, it would be a shame to not capture the stunning landscapes and unique cultural experiences. If you have a chance, bring your camera and gear related, with extra batteries to keep up with this incredible place. (More batteries absolutely needed for the winter months)',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        'Mobile Phone',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35),
                    child: Text(
                      'Ensure your phone is unlocked for international SIM cards and consider getting a local SIM card for communication within Mongolia. The solution of E-SiM may be offered by your carrier/network provider before going to Mongolia for more easy access to the local networks.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        'Chargers and Power Bank',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35),
                    child: Text(
                      'Keep your devices charged during your travels. Most operators will gladly help you charging your devices during the road time between two locations.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        'Flashlight or Headlamp',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 35),
                    child: Text(
                      'An absolutely must for remote areas with limited electricity, and deep countryside with pitch dark locations under the stars.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
