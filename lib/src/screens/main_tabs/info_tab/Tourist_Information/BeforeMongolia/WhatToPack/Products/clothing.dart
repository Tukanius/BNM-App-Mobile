import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class Clothing extends StatefulWidget {
  const Clothing({super.key});

  @override
  State<Clothing> createState() => _ClothingState();
}

class _ClothingState extends State<Clothing> {
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
                  image: NetworkImage(AppStyle.clothing1),
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
                        'Layered Clothing',
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
                      'Mongolia experiences dramatic temperature changes, so pack lightweight, breathable layers for summer /warm days, and insulated layers for winter.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        'Thermal Underwear',
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
                      'Essential for staying warm during the harsh winters.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        'Windproof and Waterproof Outerwear',
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
                      'A quality waterproof and windproof jacket is vital to protect against the elements. You will be out in the open and vast landscapes, where wind is omnipresent, and rain potentially hitting anytime.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        'Sturdy Footwear',
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
                      'Comfortable and durable hiking boots or walking shoes are essential for exploring the terrain during Summer. For Winter, insulated and waterproof boots are a must. An extra (or two) pair(s) of dry socks go a long way to stay comfortable and pain-free feet.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        'Full length trousers',
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
                      'to avoid skin cuts, and bug bites and general protection of your legs during the hikes or rides. ',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        'Sun Protection',
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
                      'Sunglasses, a wide-brimmed hat, and sunscreen to protect against the intense sunlight, especially in the summer, and at some higher elevation or the Gobi Desert. During Winter or in the mountains it also makes more sense, to avoid snow blindness.',
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
