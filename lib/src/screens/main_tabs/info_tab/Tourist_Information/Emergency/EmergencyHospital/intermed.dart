// import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart' as launcher;

class Intermed extends StatefulWidget {
  const Intermed({super.key});

  @override
  State<Intermed> createState() => _IntermedState();
}

class _IntermedState extends State<Intermed> {
  @override
  Widget build(BuildContext context) {
    // final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              // Container(
              //   decoration: BoxDecoration(
              //     image: const DecorationImage(
              //       image: NetworkImage(AppStyle.intermed),
              //       fit: BoxFit.cover,
              //     ),
              //     borderRadius: BorderRadius.circular(8),
              //   ),
              //   width: size.width,
              //   height: size.height * 0.3,
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    const Text(
                      'Mongolia has several hospitals and medical facilities, including emergency hospitals, that provide medical services to residents and travelers. While this isn`t an exhaustive list of emergency hospitals existing in Mongolia, here are some of the best and specialized hospitals in Ulaanbaatar, the capital city of Mongolia, which often serve as the primary facilities for emergency medical care, working with international travel insurance companies:',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Icon(Icons.phone, size: 20),
                              SizedBox(width: 15),
                              Text('7701-1111', style: TextStyle(fontSize: 14)),
                            ],
                          ),
                          const SizedBox(height: 15),
                          const Row(
                            children: [
                              Icon(Icons.fmd_good_outlined, size: 20),
                              SizedBox(width: 15),
                              Expanded(
                                child: Text(
                                  'Chinggis ave-41, Khan-uul district-15, Ulaanbaatar.',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.link, size: 20),
                              const SizedBox(width: 15),
                              TextButton(
                                onPressed: () {
                                  // launcher.launchUrl(
                                  //   Uri.parse('https://www.intermed.mn/'),
                                  //   mode:
                                  //       launcher.LaunchMode.externalApplication,
                                  // );
                                },
                                child: const Text('www.intermed.mn'),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(Icons.access_time_outlined, size: 20),
                              SizedBox(width: 15),
                              Expanded(
                                child: Text(
                                  'Monday – Friday: 0830 – 1700  Saturday: 0900 – 1600,Sunday (limited out-patient services): 0900-1400.',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            'One of the largest and most well-equipped private hospitals in Mongolia. Located at the south of the city, it offers a wide range of medical services, including emergency care, pediatric care, cardiovascular care, surgeries, lavatories and radiology, and has a dedicated service to foreigners with part of the staff understanding English.',
                          ),
                        ],
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

  Widget launchButton({required Function() onPressed}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ElevatedButton(
        onPressed: onPressed,
        child: const Row(children: []),
      ),
    );
  }
}
