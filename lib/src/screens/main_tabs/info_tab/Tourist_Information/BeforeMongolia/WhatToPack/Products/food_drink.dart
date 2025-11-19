import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class FoodDrink extends StatefulWidget {
  const FoodDrink({super.key});

  @override
  State<FoodDrink> createState() => _FoodDrinkState();
}

class _FoodDrinkState extends State<FoodDrink> {
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
                  image: NetworkImage(AppStyle.food),
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
                        'Water Purification System',
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
                      'A portable water purifier or purification tablets can be essential, as clean drinking water may not be readily available in some areas. We advise to boil the water just to be safe.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 10),
                      Text(
                        'Non-perishable Snacks',
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
                      'Carry some snacks for remote areas where food options may be limited, or to give a boost during the activities such hikes in higher altitudes.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Again, those are simple down to earth advices. Remember to tailor your packing list to your specific travel plans, whether you`ll be exploring the Gobi Desert, venturing into the Altai Mountains, or experiencing Mongolia`s nomadic culture. Additionally, check the weather and regional conditions during your travel dates and consult with your travel provider or guide for specific recommendations based on your itinerary.',
                    textAlign: TextAlign.justify,
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
