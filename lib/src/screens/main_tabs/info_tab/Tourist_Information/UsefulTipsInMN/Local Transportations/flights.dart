import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class LocalFlights extends StatefulWidget {
  const LocalFlights({super.key});

  @override
  State<LocalFlights> createState() => _LocalFlightsState();
}

class _LocalFlightsState extends State<LocalFlights> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: NetworkImage(AppStyle.airborder),
                    fit: BoxFit.cover,
                  ),
                ),
                width: size.width,
                height: size.width * 0.5,
              ),
              const SizedBox(height: 10),
              const Column(
                children: [
                  Text(
                    'Mongolia has several local flight operators that provide domestic air travel services, connecting different regions within the country. These operators offer flights to various destinations, including remote areas.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        'Aero Mongolia:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Aero Mongolia is one of the well-known domestic airlines in Mongolia, offering flights to various destinations within the country.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        'Miat Mongolia:',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Miat Mongolia provides most of the flights internationally and domestically in Mongolia.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Text(
                'For more information on the flights themselves, fares and booking direct flights within Mongolia, please check down below the official companies operating as well as the Chinggis Khaan International Airport charts and informations.',
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
