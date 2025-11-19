import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class RailwayBorder extends StatefulWidget {
  const RailwayBorder({super.key});

  @override
  State<RailwayBorder> createState() => _RailwayBorderState();
}

class _RailwayBorderState extends State<RailwayBorder> {
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
                    image: NetworkImage(AppStyle.railway),
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
                      'International Railway border crossing :',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Icon(Icons.check, color: Colors.red),
                        Expanded(
                          child: Text(
                            'Zamyn-Uud - Erlian Border Crossing:',
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
                        'The Zamyn-Uud - Erlian border crossing is one of the main entry points for travelers arriving by train from or to China. The Mongolian side of this border crossing is known as Zamyn-Uud, and the Chinese side is Erlian. This permanent border crossing point is normally opened all-year long. Excepted during the Mongolian and Chinese holidays. To note: it is also possible to cross by the road beside the railway station, since local travelers can use services of a shuttle to cross the border and enter into China’s territory. ',
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
                            'Altanbulag - Kyakhta Border Crossing:',
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
                        'This border crossing with Russia is situated to the very north point of Mongolia. It is another important entry point for travelers arriving by road or train from Russia. The Mongolian side is named Altanbulag, and the Russian side is Kyakhta.',
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
                            'Sukhbaatar - Naushki Border Crossing:',
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
                        'Sukhbaatar is a border town located North of Mongolia, and Naushki is the corresponding town on the Russian side. This border crossing is used by travelers arriving from Russia by train. Less frequented than the Altanbulag/Kyakhta crossing point, it is still opened 24 hours as a permanent entry to the country.',
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
