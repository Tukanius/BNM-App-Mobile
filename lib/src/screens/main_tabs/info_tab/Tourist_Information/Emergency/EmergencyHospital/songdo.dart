// import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class Songdo extends StatefulWidget {
  const Songdo({super.key});

  @override
  State<Songdo> createState() => _SongdoState();
}

class _SongdoState extends State<Songdo> {
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
              //       image: NetworkImage(AppStyle.songdo),
              //       fit: BoxFit.cover,
              //     ),
              //     borderRadius: BorderRadius.circular(8),
              //   ),
              //   width: size.width,
              //   height: size.height * 0.3,
              // ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  children: [
                    // Text(
                    //     'Mongolia has several hospitals and medical facilities, including emergency hospitals, that provide medical services to residents and travelers. While this isn`t an exhaustive list of emergency hospitals existing in Mongolia, here are some of the best and specialized hospitals in Ulaanbaatar, the capital city of Mongolia, which often serve as the primary facilities for emergency medical care, working with international travel insurance companies:'),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.phone, size: 20),
                              SizedBox(width: 15),
                              Text(
                                '+976-7012-9000, +9767011-1163',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Icon(Icons.fmd_good_outlined, size: 20),
                              SizedBox(width: 15),
                              Expanded(
                                child: Text(
                                  'Choidog street, Sukhbaatar district, 1st Khoroo, Ulaanbaatar',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Icon(Icons.access_time_outlined, size: 20),
                              SizedBox(width: 15),
                              Expanded(
                                child: Text(
                                  'Monday-Friday: 08:30-17:00.  ',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Icon(Icons.markunread_outlined, size: 20),
                              SizedBox(width: 15),
                              Expanded(
                                child: Text(
                                  'info@songdo.mn',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Row(
                            children: [
                              Icon(Icons.print_outlined, size: 20),
                              SizedBox(width: 15),
                              Expanded(
                                child: Text(
                                  '+976-7011-1164',
                                  style: TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 15),
                          Text(
                            'Songdo is a recent Korean private Hospital providing a range of medical services, including emergency care, diagnostics and treatment plans. Their strength is to be located right next to the city center, not far from the main Sukhbaatar square, and their price is affordable. Well equipped with X-rays, tomography, MRI, and specialists in various domains of medicine, sometimes speaking English. NO EMERGENCY.',
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
}
