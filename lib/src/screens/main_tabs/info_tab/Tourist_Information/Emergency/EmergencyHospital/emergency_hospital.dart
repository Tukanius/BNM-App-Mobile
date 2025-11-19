import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Tourist_Information/Emergency/EmergencyHospital/intermed.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Tourist_Information/Emergency/EmergencyHospital/songdo.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Tourist_Information/Emergency/EmergencyHospital/sosmedica.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class EmergencyHospital extends StatefulWidget {
  const EmergencyHospital({super.key});

  @override
  State<EmergencyHospital> createState() => _EmergencyHospitalState();
}

class _EmergencyHospitalState extends State<EmergencyHospital> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Emergencies hospitals',
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
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Material(
              child: Container(
                height: 55,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: TabBar(
                  physics: const ClampingScrollPhysics(),
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                    right: 10,
                    bottom: 10,
                  ),
                  unselectedLabelColor: Colors.grey,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: HexColor('#025dc4'),
                  ),
                  tabs: [
                    Tab(
                      child: SizedBox(
                        height: 35,
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text('Intermed'),
                        ),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        height: 35,
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text('SOS medica'),
                        ),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        height: 35,
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text('Songdo'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  Center(child: Intermed()),
                  Center(child: SOSMedica()),
                  Center(child: Songdo()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
