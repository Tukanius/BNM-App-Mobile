// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LocalBuses extends StatefulWidget {
  const LocalBuses({super.key});

  @override
  State<LocalBuses> createState() => _LocalBusesState();
}

class _LocalBusesState extends State<LocalBuses> {
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
                    image: NetworkImage(AppStyle.localbus),
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
                    'Local bus transportation in Mongolia is available in cities and towns, offering a budget-friendly means of getting around. Here is some information about local bus transportation in Mongolia:',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        'Ulaanbaatar',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Ulaanbaatar, the capital city, has an extensive network of city buses and trolleybuses. The routes cover most parts of the city, making it relatively easy to get around. Buses and trolleybuses are typically blue, and you can identify their routes by the numbers displayed on the front of the vehicles.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        'Other Cities and Towns',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'In smaller cities and towns across Mongolia, you’ll find local bus services that cater to the transportation needs of residents. These services vary in frequency and routes, depending on the destinations. There are 2 major bus stations which connect most of the Cities.',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () async {
                      // Replace these latitude and longitude values with the actual values
                      double latitude = 47.91074;
                      double longitude = 106.79843;

                      // Format the Google Maps URL with the specified latitude and longitude
                      final String googleMapsLink =
                          "https://www.google.com/maps?q=$latitude,$longitude";

                      try {
                        await launch(googleMapsLink);
                      } catch (e) {
                        print('Error launching Google Maps: $e');
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_circle_right_rounded,
                              color: Colors.white,
                            ),
                            Text(
                              'Western Bus Terminal',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () async {
                      // Replace these latitude and longitude values with the actual values
                      double latitude = 47.91324;
                      double longitude = 106.97813;

                      // Format the Google Maps URL with the specified latitude and longitude
                      final String googleMapsLink =
                          "https://www.google.com/maps?q=$latitude,$longitude";

                      try {
                        await launch(googleMapsLink);
                      } catch (e) {
                        print('Error launching Google Maps: $e');
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.blue,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_circle_right_rounded,
                              color: Colors.white,
                            ),
                            Text(
                              'Eastern Bus Terminal',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
