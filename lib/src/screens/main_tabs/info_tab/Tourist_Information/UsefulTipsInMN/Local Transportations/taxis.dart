import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class LocalTaxis extends StatefulWidget {
  const LocalTaxis({super.key});

  @override
  State<LocalTaxis> createState() => _LocalTaxisState();
}

class _LocalTaxisState extends State<LocalTaxis> {
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
                    image: NetworkImage(AppStyle.localtaxi),
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
                    'Taxi services in Mongolia are a common and convenient way to get around, especially in the capital city, Ulaanbaatar. Here`s some information about taxis in Mongolia:',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        'Taxi types',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'In Ulaanbaatar and other urban areas, you can find both traditional taxis and ride-sharing services like Uber and Bolt. Traditional taxis are typically marked with taxi signs on the roof or have the word "Taxi" written on the side.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        'Taxi Availability',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Taxis are readily available at popular locations, such as the airport, bus stations, train stations, and major tourist areas. You can also hail them on the street or book through taxi apps.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        'Taxi Apps',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Applications such as UBCAB (both for iPhone and Android systems) are a really easy to use solution for being able to reach your destination. https://www.ubcab.mn',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        'Taxi fares',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Traditional taxis typically use meters, and fares are generally reasonable. However, it`s a good practice to confirm the fare with the driver before starting your journey. Ride-sharing services provide upfront pricing.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        'English Proficiency',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'While some taxi drivers in Ulaanbaatar may speak basic English, it`s a good idea to have your destination written in Mongolian or a local map to show the driver.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        'Safety',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Mongolia is generally safe, but like anywhere else, it`s essential to ensure your safety. Make sure to choose registered and reputable taxi services. For ride-sharing apps, use trusted and verified drivers.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        'Payment',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Payment is usually made in cash. In Ulaanbaatar, some taxi drivers may accept credit cards or mobile payment options, but it`s best to have cash on hand.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        'Long-Distance Trips',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Payment is usually made in cash. In Ulaanbaatar, some taxi drivers may accept credit cards or mobile payment options, but it`s best to have cash on hand.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        'Tipping',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'Tipping is not common in Mongolia, but rounding up the fare is appreciated.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.check, color: Colors.red),
                      SizedBox(width: 5),
                      Text(
                        'Availability in Rural Areas',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Text(
                      'In more remote or rural areas, taxi services may be limited or not readily available. Shared minibuses or vans might be the primary mode of transportation.',
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
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
