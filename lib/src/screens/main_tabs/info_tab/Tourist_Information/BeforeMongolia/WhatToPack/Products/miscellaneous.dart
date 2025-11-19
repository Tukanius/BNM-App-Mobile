import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class Miscellaneous extends StatefulWidget {
  const Miscellaneous({super.key});

  @override
  State<Miscellaneous> createState() => _MiscellaneousState();
}

class _MiscellaneousState extends State<Miscellaneous> {
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
                  image: NetworkImage(AppStyle.miscellaneous),
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
                        'Cash',
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
                      'Although using cards or apps in the cites, Mongolian people primarily operate on a cash economy, so it`s advisable to carry sufficient cash in the local currency for the countryside. Especially while stopping by the local villages for some supplies. The Mongolian Tugrik (MNT) is the currency to use within the country.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        'Maps and guidebooks',
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
                      'If you plan to explore remote areas, consider bringing maps and guidebooks specific to Mongolia and the regions crossed. Offline maps such as maps.me are working especially well for the countryside, and many paper formats are available to purchase in Ulaanbaatar city before venturing to remote areas.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        'A multi-tool or pocket knife',
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
                      'Useful for various tasks in the great outdoors, from eating to fixing small things.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        'Binoculars',
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
                      'To enjoy wildlife watching and take in the vast landscapes.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        'Language Phrasebook',
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
                      'Mongolian is the official language, and English proficiency can be limited, especially in rural areas. It can be a lifesaver!',
                      textAlign: TextAlign.justify,
                    ),
                  ),
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
