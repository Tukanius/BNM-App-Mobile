import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class ByRoad extends StatefulWidget {
  const ByRoad({super.key});

  @override
  State<ByRoad> createState() => _ByRoadState();
}

class _ByRoadState extends State<ByRoad> {
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
                    image: NetworkImage(AppStyle.road),
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
                      'Traveling overland is also possible and rewarding too. You can enter Mongolia by road from neighboring countries like Russia and China. Border crossings exist, and you can use private vehicles or hire a driver for that matter. ',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Traveling by bus is also another a cost-effective but often time-consuming option. Border crossings are all listed on the main entry points of the app on the next section. ',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Remember that visa requirements and entry conditions may vary depending on your nationality and chosen means of transportation. Before you travel to Mongolia, research the most suitable option for your preferences, plan accordingly, and check for any visa and travel restrictions.',
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
