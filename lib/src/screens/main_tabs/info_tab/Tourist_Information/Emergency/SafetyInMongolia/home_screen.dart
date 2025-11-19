import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class SafetyInMongolia extends StatelessWidget {
  const SafetyInMongolia({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'General info in Mongolia',
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
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                    image: NetworkImage(AppStyle.safe),
                    fit: BoxFit.cover,
                  ),
                ),
                width: size.width,
                height: size.height * 0.25,
              ),
              const SizedBox(height: 15),
              const Text(
                'Mongolia is generally a safe country for travelers. While crime rates are low, it`s essential to be cautious in remote areas, respect local customs, and prepare for varying weather conditions. Health services can be limited in rural areas, so having comprehensive travel insurance is advisable. Overall, Mongolia is safe for tourists who exercise basic safety precautions. Mongolia is one of the safest countries in Asia. It ranks as the 8th safest country in Asia after countries such as Singapore, Japan, Malaysia, and Kuwait and 40th in the world. But there are things you still need to be aware about. So, here are the best tips to be safe during your stay in Mongolia.',
              ),
              const SizedBox(height: 15),
              const Text(
                'General safety advice for travelers in Mongolia:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              const Row(
                children: [
                  Icon(Icons.check, color: Colors.red),
                  Text('Respect nomadic culture and customs.'),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.check, color: Colors.red),
                  Text('Be prepared for variable weather.'),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.check, color: Colors.red),
                  Text('Stay aware in remote areas.'),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.check, color: Colors.red),
                  Expanded(
                    child: Text(
                      'In Ulaanbaatar, be aware of your belongings, pick pockets operate near touristic sites, museums and temples.',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.check, color: Colors.red),
                  Expanded(
                    child: Text(
                      'Plan and communicate well, especially in isolated regions',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.check, color: Colors.red),
                  Expanded(
                    child: Text(
                      'Ensure you have local contacts and emergency numbers with you at all times.',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.check, color: Colors.red),
                  Text('Be cautious of wildlife and road conditions.'),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.check, color: Colors.red),
                  Text('Travel with an experienced guide'),
                ],
              ),
              const SizedBox(height: 10),
              const Row(
                children: [
                  Icon(Icons.check, color: Colors.red),
                  Expanded(
                    child: Text(
                      'Learn basic Mongolian phrases for effective communication.',
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
