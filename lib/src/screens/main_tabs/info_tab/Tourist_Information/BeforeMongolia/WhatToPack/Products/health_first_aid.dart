import 'package:flutter/material.dart';

class HealthFirstAid extends StatefulWidget {
  const HealthFirstAid({super.key});

  @override
  State<HealthFirstAid> createState() => _HealthFirstAidState();
}

class _HealthFirstAidState extends State<HealthFirstAid> {
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
                      bottomRight: Radius.circular(15)),
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://source.unsplash.com/random?sig=3'),
                      fit: BoxFit.cover)),
              width: size.width,
              height: size.width * 0.8,
              child: SafeArea(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back_rounded)),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Personal Medications',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 35),
                      child: Text(
                        'A well-stocked travel first aid kit and any prescription medications you require. This is a must-have.',
                        textAlign: TextAlign.justify,
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.check,
                        color: Colors.red,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Insect Repellent',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 35),
                      child: Text(
                        'Necessary for protecting against insects, especially in rural areas, during the summer and humid days.',
                        textAlign: TextAlign.justify,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }
}
