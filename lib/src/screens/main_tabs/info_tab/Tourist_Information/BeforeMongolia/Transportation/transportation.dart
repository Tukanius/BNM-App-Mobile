import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Tourist_Information/BeforeMongolia/Transportation/ByAir.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Tourist_Information/BeforeMongolia/Transportation/ByRoad.dart';
import 'package:bnm_flutter/src/screens/main_tabs/info_tab/Tourist_Information/BeforeMongolia/Transportation/ByTrain.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Transportation extends StatefulWidget {
  const Transportation({super.key});

  @override
  State<Transportation> createState() => _TransportationState();
}

class _TransportationState extends State<Transportation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Transportation',
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
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(30),
                        //     border: Border.all(
                        //         color: const Color.fromARGB(255, 0, 0, 0),
                        //         width: 1)),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text('By air'),
                        ),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        height: 35,
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(30),
                        //     border: Border.all(
                        //         color: const Color.fromARGB(255, 0, 0, 0),
                        //         width: 1)),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text('By Train'),
                        ),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        height: 35,
                        // decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(30),
                        //     border: Border.all(
                        //         color: const Color.fromARGB(255, 0, 0, 0),
                        //         width: 1)),
                        child: const Align(
                          alignment: Alignment.center,
                          child: Text('By Road'),
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
                  Center(child: ByAir()),
                  Center(child: ByTrain()),
                  Center(child: ByRoad()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
