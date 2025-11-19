// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Vaccines extends StatelessWidget {
  const Vaccines({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Precautions',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
            size: 28,
          ),
        ),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              const Text(
                'Traveling to Mongolia, like any international trip, requires some health precautions to ensure a safe and enjoyable journey. Here are some health recommendations for traveling to Mongolia:',
              ),
              const SizedBox(height: 16),
              //////////////////////////////////////////////////// ROW 1 ////////////////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const Vaccinations(),
                          );
                        },
                        child: Container(
                          width: size.width * 0.23,
                          height: size.height * 0.12,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/a.png',
                              ),
                            ),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                offset: const Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0,
                              ),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: const Text(
                          'Vaccinations',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const YellowFeverCertificate(),
                      );
                    },
                    child: Column(
                      children: [
                        Container(
                          width: size.width * 0.23,
                          height: size.height * 0.12,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/b.png',
                              ),
                            ),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                offset: const Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0,
                              ),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: size.width * 0.23,
                          height: size.height * 0.05,
                          child: const Text(
                            'Yellow Fever Certificate',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const FoodWaterSafety(),
                          );
                        },
                        child: Container(
                          width: size.width * 0.23,
                          height: size.height * 0.12,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/c.png',
                              ),
                            ),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                offset: const Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0,
                              ),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: const Text(
                          'Food and Water Safety',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ////////////////////////////////////////////////  ROW 2  ///////////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const HandHygiene(),
                          );
                        },
                        child: Container(
                          width: size.width * 0.23,
                          height: size.height * 0.12,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/d.png',
                              ),
                            ),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                offset: const Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0,
                              ),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: const Text(
                          'Hand Hygiene',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) =>
                                const AltitudeConsiderations(),
                          );
                        },
                        child: Container(
                          width: size.width * 0.23,
                          height: size.height * 0.12,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/b.png',
                              ),
                            ),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                offset: const Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0,
                              ),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: const Text(
                          'Altitude Considerations',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const TravelHealthInsurance(),
                          );
                        },
                        child: Container(
                          width: size.width * 0.23,
                          height: size.height * 0.12,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/e.png',
                              ),
                            ),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                offset: const Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0,
                              ),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: const Text(
                          ' Travel Health Insurance',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ////////////////////////////////////////// ROW 3 ///////////////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const MedicalSupplies(),
                          );
                        },
                        child: Container(
                          width: size.width * 0.23,
                          height: size.height * 0.12,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/f.png',
                              ),
                            ),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                offset: const Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0,
                              ),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: const Text(
                          'Medical Supplies',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const InsectProtection(),
                          );
                        },
                        child: Container(
                          width: size.width * 0.23,
                          height: size.height * 0.12,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/b.png',
                              ),
                            ),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                offset: const Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0,
                              ),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: const Text(
                          'Insect Protection',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const SunProtection(),
                          );
                        },
                        child: Container(
                          width: size.width * 0.23,
                          height: size.height * 0.12,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/g.png',
                              ),
                            ),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                offset: const Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0,
                              ),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: const Text(
                          'Sun Protection',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              ////////////////////////////////////////// ROW 4 ///////////////////////////////////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const MedicalFacilities(),
                          );
                        },
                        child: Container(
                          width: size.width * 0.23,
                          height: size.height * 0.12,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/h.png',
                              ),
                            ),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                offset: const Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0,
                              ),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: const Text(
                          'Medical Facilities',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) =>
                                const PrescriptionMedications(),
                          );
                        },
                        child: Container(
                          width: size.width * 0.23,
                          height: size.height * 0.12,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/i.png',
                              ),
                            ),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                offset: const Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0,
                              ),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: const Text(
                          'Prescription Medications',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => const FoodTravelPrecautions(),
                          );
                        },
                        child: Container(
                          width: size.width * 0.23,
                          height: size.height * 0.12,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: NetworkImage(
                                'http://159.223.56.204:8000/asset/j.png',
                              ),
                            ),
                            borderRadius: BorderRadius.circular(14),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                offset: const Offset(4.0, 4.0),
                                blurRadius: 15,
                                spreadRadius: 1.0,
                              ),
                            ],
                            color: const Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      SizedBox(
                        width: size.width * 0.23,
                        height: size.height * 0.05,
                        child: const Text(
                          ' Food and Travel Precautions',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ],
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

class Vaccinations extends StatefulWidget {
  const Vaccinations({super.key});

  @override
  State<Vaccinations> createState() => _VaccinationsState();
}

class _VaccinationsState extends State<Vaccinations> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.width * 0.45,
      ),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.network(
                    'http://159.223.56.204:8000/asset/a.png',
                  ),
                ),
                const Text(
                  'Vaccinations',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Consult a healthcare provider or travel clinic for recommended and required vaccinations. Common vaccines for Mongolia include those for hepatitis A, hepatitis B, typhoid, and routine immunizations. Please note as of 2023, Mongolia authorities officially do not request any vaccination against COVID-19 to enter the country.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class YellowFeverCertificate extends StatefulWidget {
  const YellowFeverCertificate({super.key});

  @override
  State<YellowFeverCertificate> createState() => _YellowFeverCertificateState();
}

class _YellowFeverCertificateState extends State<YellowFeverCertificate> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.width * 0.55,
      ),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.network(
                    'http://159.223.56.204:8000/asset/b.png',
                  ),
                ),
                const Text(
                  'Yellow Fever Certificate',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  'If you are traveling from or have transited through a country with a risk of yellow fever transmission, you may need a yellow fever vaccination certificate.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FoodWaterSafety extends StatefulWidget {
  const FoodWaterSafety({super.key});

  @override
  State<FoodWaterSafety> createState() => _FoodWaterSafetyState();
}

class _FoodWaterSafetyState extends State<FoodWaterSafety> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.width * 0.45,
      ),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.network(
                    'http://159.223.56.204:8000/asset/c.png',
                  ),
                ),
                const Text(
                  'Food and Water Safety',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  'As a general recommendation application for many countries such as Mongolia, it is a good practice to stick to drinking bottled or purified water, and avoid consuming tap water or ice in drinks. Be cautious with raw or undercooked foods, especially while in remote areas. It is important to eat well cooked foods, or drink boiled water if looking suspicious.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HandHygiene extends StatefulWidget {
  const HandHygiene({super.key});

  @override
  State<HandHygiene> createState() => _HandHygieneState();
}

class _HandHygieneState extends State<HandHygiene> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.width * 0.5,
      ),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.network(
                    'http://159.223.56.204:8000/asset/d.png',
                  ),
                ),
                const Text(
                  'Hand Hygiene',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Maintain good hand hygiene by washing your hands regularly with soap and water, or using hand sanitizer and wet wipes when soap is not available in your area. It is especially important around the meals, while cooking or eating to avoid complications.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class AltitudeConsiderations extends StatefulWidget {
  const AltitudeConsiderations({super.key});

  @override
  State<AltitudeConsiderations> createState() => _AltitudeConsiderationsState();
}

class _AltitudeConsiderationsState extends State<AltitudeConsiderations> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.width * 0.5,
      ),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.network(
                    'http://159.223.56.204:8000/asset/b.png',
                  ),
                ),
                const Text(
                  'Altitude Considerations',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Mongolia features high-altitude regions, with an average around 1500m. If you plan to travel to higher grounds, such like the Altai Mountains, be prepared for altitude-related sickness. Acclimatize gradually, stay hydrated, and consider medication if advised by a healthcare provider.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TravelHealthInsurance extends StatefulWidget {
  const TravelHealthInsurance({super.key});

  @override
  State<TravelHealthInsurance> createState() => _TravelHealthInsuranceState();
}

class _TravelHealthInsuranceState extends State<TravelHealthInsurance> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.width * 0.5,
      ),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.network(
                    'http://159.223.56.204:8000/asset/e.png',
                  ),
                ),
                const Text(
                  'Travel Health Insurance',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Purchase comprehensive travel insurance that covers medical emergencies and evacuation. Verify that your insurance is adequate for the activities you plan to undertake, such as hiking or horseback riding. More on the topic of Travel Insurances on the next chapter.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MedicalSupplies extends StatefulWidget {
  const MedicalSupplies({super.key});

  @override
  State<MedicalSupplies> createState() => _MedicalSuppliesState();
}

class _MedicalSuppliesState extends State<MedicalSupplies> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.width * 0.5,
      ),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.network(
                    'http://159.223.56.204:8000/asset/f.png',
                  ),
                ),
                const Text(
                  'Medical Supplies',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  'It is recommended to carry a basic medical kit with supplies, including pain relievers, antidiarrheal medications, bandages, and necessary prescription medications if you require specific treatments. Most local tour agencies in Mongolia have their own medical/emergency kits during the trips they operate.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InsectProtection extends StatefulWidget {
  const InsectProtection({super.key});

  @override
  State<InsectProtection> createState() => _InsectProtectionState();
}

class _InsectProtectionState extends State<InsectProtection> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.width * 0.5,
      ),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.network(
                    'http://159.223.56.204:8000/asset/b.png',
                  ),
                ),
                const Text(
                  'Insect Protection',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Some regions, like in the North close to the Khuvsgul lake, and particularly during the summer, there may be a risk of insect-borne diseases. Use insect repellent and consider wearing long sleeves and pants to protect against insect bites. The tick-borne disease is predominant in this region, but not worrisome in the rest of the country.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SunProtection extends StatefulWidget {
  const SunProtection({super.key});

  @override
  State<SunProtection> createState() => _SunProtectionState();
}

class _SunProtectionState extends State<SunProtection> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.width * 0.5,
      ),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.network(
                    'http://159.223.56.204:8000/asset/g.png',
                  ),
                ),
                const Text(
                  'Sun Protection',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Mongolia has a harsh climate with intense sunlight. Use sunscreen, sunglasses, and a wide-brimmed hat to protect against sunburns. They can happen really fast during a day hike, or spending time outdoors, even for just an afternoon. ',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MedicalFacilities extends StatefulWidget {
  const MedicalFacilities({super.key});

  @override
  State<MedicalFacilities> createState() => _MedicalFacilitiesState();
}

class _MedicalFacilitiesState extends State<MedicalFacilities> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.width * 0.5,
      ),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.network(
                    'http://159.223.56.204:8000/asset/h.png',
                  ),
                ),
                const Text(
                  'Medical Facilities',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Medical facilities can be limited in rural areas. They generally are attached to regional main villages. Make sure you have access to a reliable means of communication with your tour operator, and that they know the location of the nearest medical facility in case of emergencies.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PrescriptionMedications extends StatefulWidget {
  const PrescriptionMedications({super.key});

  @override
  State<PrescriptionMedications> createState() =>
      _PrescriptionMedicationsState();
}

class _PrescriptionMedicationsState extends State<PrescriptionMedications> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.width * 0.5,
      ),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.network(
                    'http://159.223.56.204:8000/asset/i.png',
                  ),
                ),
                const Text(
                  'Prescription Medications',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  'If you take prescription medications, ensure you have an adequate supply for your trip and carry a copy of your prescriptions in case you need to replace them. Most can be bought prior to venturing to the countryside in Ulaanbaatar, the capital city.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FoodTravelPrecautions extends StatefulWidget {
  const FoodTravelPrecautions({super.key});

  @override
  State<FoodTravelPrecautions> createState() => _FoodTravelPrecautionsState();
}

class _FoodTravelPrecautionsState extends State<FoodTravelPrecautions> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.width * 0.35,
      ),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Image.network(
                    'http://159.223.56.204:8000/asset/j.png',
                  ),
                ),
                const Text(
                  'Food and Travel Precautions',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 15),
                const Text(
                  'Be mindful of the hygiene standards at local restaurants and food vendors. It`s generally safer to eat at established and well-reviewed places. Before your trip, it`s essential to consult with a healthcare provider who specializes in travel medicine. They can provide personalized advice based on your health, travel plans, and any specific concerns. Additionally, staying updated on travel advisories from your government or the World Health Organization (WHO) can help you make informed decisions regarding your trip to Mongolia.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
