import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class AirBorder extends StatefulWidget {
  const AirBorder({super.key});

  @override
  State<AirBorder> createState() => _AirBorderState();
}

class _AirBorderState extends State<AirBorder> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'International Air border crossing (airports):',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.check, color: Colors.red),
                        Expanded(
                          child: Text(
                            'Chinggis Khaan International Airport (ULN):',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        'Chinggis Khaan International Airport (formerly Buyant Ukhaa airport), is located just South of the capital city Ulaanbaatar. It is the largest and newest international airport in Mongolia. It serves as the primary entry point for most international travelers arriving by air, from all around the world.',
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.check, color: Colors.red),
                        Expanded(
                          child: Text(
                            'Buyant-Ukhaa International Airport (ULN):',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        'Buyant-Ukhaa International Airport is the former first airport of the country. Since the new airport opened, this one has been relocated to serving more local flights instead, notably with the Western regions of the country.',
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Icon(Icons.check, color: Colors.red),
                        Expanded(
                          child: Text(
                            'Choibalsan airport, deserving the Eastern province of Dornod.',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text(
                        'This is a small airport located in Choibalsan Soum (village), the capital of Dornod Province in Mongolia. Serving as an entry point in case of emergency landings for international flights.',
                        style: TextStyle(fontSize: 14),
                        textAlign: TextAlign.justify,
                      ),
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
