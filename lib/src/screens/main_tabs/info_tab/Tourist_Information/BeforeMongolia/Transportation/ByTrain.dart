import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class ByTrain extends StatefulWidget {
  const ByTrain({super.key});

  @override
  State<ByTrain> createState() => _ByTrainState();
}

class _ByTrainState extends State<ByTrain> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage(AppStyle.train),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                width: size.width,
                height: size.height * 0.3,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    Text(
                      'Travelers can take the Trans-Siberian Railway from Russia or the Beijing-Ulaanbaatar Railway from China. These train journeys offer a unique way to access Mongolia and enjoy scenic routes. A different form and a pleasant way to travel, far from the crowded airports and the rush. There is something special traveling through the lands with a night spent either at the North of Mongolia or among the Gobi desert coming from the South. It is an ancient way of traveling, sometimes quoted as a romantic journey in literature.',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Prices vary depending on the class chosen, typically 1st class “Deluxe” (the more expensive, with a shared cabin for 2 people), and a 2nd class price for a cabin of 4 travelers. ',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Fun fact: the Trans-Siberian railway (connecting the cities of Moscow - Ulaanbaatar - Beijing) is the longest continuous rail line on the planet! Often the subject of being in the “bucket-list” for many travelers and adventurers.  ',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Also to note: it is possible to combine AIR and TRAIN together within your trip, by carefully planning your dates of arrival and departure from Mongolia. Please keep in mind the trains do not operate everyday, and the schedules are to be updated every Spring (months of March/April) in order to be confirmed for the Summer touristic season. ',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
