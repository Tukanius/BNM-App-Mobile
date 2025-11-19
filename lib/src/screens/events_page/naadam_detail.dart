import 'package:bnm_flutter/components/custom_button.dart/custom_arrow.dart';
import 'package:bnm_flutter/components/ui/color.dart';
import 'package:flutter/material.dart';

class NaadamDetail extends StatefulWidget {
  static const routeName = "NaadamDetail";
  const NaadamDetail({super.key});

  @override
  State<NaadamDetail> createState() => _NaadamDetailState();
}

class _NaadamDetailState extends State<NaadamDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Naadam',
          style: TextStyle(
            color: black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: white,
        elevation: 0,
        leading: CustomArrow(
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                "Naadam is Mongolia's most renowned festival and national holiday, celebrated every year from July 11th to 13th. Known as the 'Three Manly Games,' it centers on traditional competitions in wrestling, horse racing, and archery—skills that have been at the heart of Mongolian culture and nomadic life for centuries. Each contest reflects both physical strength and deep cultural heritage, connecting modern celebrations to the time of Genghis Khan. The festival begins with an elaborate opening ceremony that fills the National Stadium in Ulaanbaatar with color and spectacle. Parades of athletes, musicians, monks, and soldiers in traditional attire march proudly, accompanied by music, dances, and performances that showcase Mongolia’s history and identity. The ceremony sets the stage for days of competition and festivity, uniting Mongolians and welcoming visitors from around the world to share in the spirit of their national pride.",
                style: TextStyle(
                  color: black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
