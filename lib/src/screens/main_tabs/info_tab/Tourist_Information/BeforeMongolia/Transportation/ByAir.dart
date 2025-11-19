import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class ByAir extends StatefulWidget {
  const ByAir({super.key});

  @override
  State<ByAir> createState() => _ByAirState();
}

class _ByAirState extends State<ByAir> {
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
                    image: NetworkImage(AppStyle.airborder),
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
                      'Definitely the most common way to reach Mongolia is by air. Chinggis Khaan International Airport (ULN) located outside of the Capital city Ulaanbaatar is the primary international gateway to the country. Multiple airlines offer direct and connecting flights to Mongolia from major cities worldwide. ',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Coming from Asia, the common departure points include Beijing (China), Seoul (South Korea), Tokyo (Japan), Hong Kong, and Bangkok (Thailand).',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'From many countries in Europe, many companies transit their flights to Moscow (Russia) and Istanbul (Turkey) before reaching Mongolia. If your point of departure is located in North America, you shall have more connecting flights, coming from cities including New York, Los Angeles, and San Francisco. Common layover cities include Beijing and Seoul.',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Cities from the Middle East also connect with Ulaanbaatar, from Dubai (United Arab Emirates) and Doha (Qatar).',
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Please keep in mind flight availability and routes may change over time, and it is always recommended to check with airlines and travel agencies for the most up-to-date information on international flights to Mongolia. When planning your trip, consider the most convenient and cost-effective routes based on your departure location and any stopovers you may be willing to make. Likewise, the main traveling season to Mongolia is during the summer months of June to  the beginning of September, and so the prices may see an increase at this period of the year.',
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
