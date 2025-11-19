import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class BYROAD extends StatefulWidget {
  const BYROAD({super.key});

  @override
  State<BYROAD> createState() => _BYROADState();
}

class _BYROADState extends State<BYROAD> {
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
                    image: NetworkImage(AppStyle.mainentry),
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
                      'Border Crossing Points by the roads:',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.check, color: Colors.red),
                            Expanded(
                              child: Text(
                                'Shared with China:',
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Zamiin Uud – Erlian',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Located at the very South of Mongolia, to the border of Zamiin Uud and Erlian border town of China. Together with the railway border crossing with the People’s Republic of China, it is the most popular pathway. Just like for the train, this border crossing point is open everyday, excepted during main Mongolian and Chinese holidays. There is a fixed schedule for crossing for personal vehicles, Monday to Friday from 8am to 6pm. ',
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Bulgan – Takashiken',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'At the very West of Mongolia, the border crossing point of Bulgan soum is located in the Khovd province. This is access to the city of Takashiken, Xinjiang, China. Less used than the other mentioned border crossing point, it still welcomes up to 200 travelers per year. Nowadays buses operate to cross the border. The village of Bulgan became easily accessible with the new paved road joining the capital of the region, the city of Khovd.',
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Bichigt – Zuun Khatavch ',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'At the Easternmost of Mongolia, this border checkpoint is located at the Erdenetsagaan soum, Sukhbaatar province. It links China via its Inner Mongolia region. Permanently opened like the others but less traveled, from Monday to Friday 8am to 17pm, with a lunch break. It seems to be more crossed by local Mongolians and Chinese residents than international travelers.',
                                textAlign: TextAlign.justify,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                        Row(
                          children: [
                            Icon(Icons.check, color: Colors.red),
                            Expanded(
                              child: Text(
                                'Shared with Russia:',
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
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Altanbulag – Khyakhta ',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'The same permanent border shared with the train, is opened 24 hours. This checkpoint is the most important international border crossing between Mongolia and Russia, one of the most busy in Mongolia. More lanes are to be built to accommodate future flow of travelers on both sides of the road.',
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Tsagaannuur – Tashanta ',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'From Bayan Ulgii province in the westernmost of Mongolia, the Tsagaannuur soum is another gateway to crossing to Russia. It is another permanent checkpoint with its counterpart Tashanta located in the Russian Altai Republic. open from 9am to 12pm, and then from 2pm to 6pm daily except for the holidays of the two countries. Accessible from the capital city of the Bayan-Ulgii Province Ulgii, it gives access to the Western regions of Mongolia, and the culture of the Kazakh people living in the region. ',
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 20),
                              Text(
                                'Ereentsav – Solovyevsk ',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'The last permanent and international checkpoint for foreign travelers is located in the Dornod Province, at the very East of Mongolia. Access from the village of Chuluunkhoroot and operating from 9am-13pm and 14pm-18pm. To note: only travelers are allowed to cross the border point on foot. No vehicles allowed.',
                                textAlign: TextAlign.justify,
                              ),
                              SizedBox(height: 10),
                              Text(
                                'Please note that border crossings may have specific regulations and restrictions based on your nationality and the type of visa you possess. It`s important to check the latest entry requirements and border conditions before engaging into traveling to Mongolia, and it may be beneficial to contact the Mongolian immigration authorities or your nearest Mongolian embassy and consulate for the most up-to-date information.',
                              ),
                            ],
                          ),
                        ),
                      ],
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
