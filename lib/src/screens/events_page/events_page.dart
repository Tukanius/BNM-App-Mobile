// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/components/custom_button.dart/custom_arrow.dart';
import 'package:bnm_flutter/components/ui/color.dart';
// import 'package:bnm_flutter/src/screens/events_page/naadam_detail.dart';
import 'package:flutter/material.dart';

class EventsPage extends StatefulWidget {
  static const routeName = "EventsPage";
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  final List<Map<String, String>> events = [
    {
      'name': 'Tumen Aduu Festival',
      'asset': 'assets/images/events/tumen_aduu.jpg',
    },
    {
      'name': 'Golden Eagle Festival',
      'asset': 'assets/images/events/golden_eagle.jpg',
    },
    {
      'name': 'Hiimori Horseback Archery Festival',
      'asset': 'assets/images/events/horse_back_archery.jpg',
    },
    {'name': 'UB Hiking', 'asset': 'assets/images/events/ub_hiking.jpg'},
    {'name': 'Danshig Naadam', 'asset': 'assets/images/events/danshig.jpg'},
    {'name': 'UB Food Festival', 'asset': 'assets/images/events/ub_food.jpg'},
    {
      'name': 'Deeltei Mongol Festival',
      'asset': 'assets/images/events/deeltei_mongol.jpg',
    },
    {
      'name': 'Ulaanbaatar Marathon',
      'asset': 'assets/images/events/ulaanbaatar_marathon.jpg',
    },
    {'name': 'Playtime Festival', 'asset': 'assets/images/events/playtime.jpg'},
    {
      'name': 'Taliin Salkhi Moto Festival',
      'asset': 'assets/images/events/taliin_salkhi.jpg',
    },
    {'name': 'Tenger Festival', 'asset': 'assets/images/events/tenger.jpg'},
    {
      'name': 'International Travel Mart (ITM)',
      'asset': 'assets/images/events/itm.jpg',
    },
    {
      'name': 'Tsagaan Sar (Lunar New Year)',
      'asset': 'assets/images/events/tsagaan_sar.jpg',
    },
    {
      'name': 'Eagle Festival at Ulaanbaatar',
      'asset': 'assets/images/events/eagle_festival.jpg',
    },
    {'name': 'Ice Festival', 'asset': 'assets/images/events/ice_festival.jpg'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Events',
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
      extendBodyBehindAppBar: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed(NaadamDetail.routeName);
                },
                child: Image.asset(
                  'assets/images/events/test_naadam.png',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Events',
                style: TextStyle(
                  color: startColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(12),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/events/tsagaan_sar.png',
                            fit: BoxFit.cover,
                            height: 170,
                          ),
                          Positioned(
                            bottom: 8,
                            left: 8,
                            right: 8,
                            child: Text(
                              'Tsagaan sar (Lunar New Year)',
                              style: TextStyle(
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(12),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/images/events/itm.png',
                            fit: BoxFit.cover,
                            height: 170,
                          ),
                          Positioned(
                            bottom: 8,
                            left: 8,
                            right: 8,
                            child: Text(
                              'International Travel Mart (ITM)',
                              style: TextStyle(
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Padding(
              //   padding: const EdgeInsets.all(12.0),
              //   child: GridView.builder(
              //     itemCount: events.length,
              //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 2,
              //       crossAxisSpacing: 12,
              //       mainAxisSpacing: 12,
              //       childAspectRatio: 1.0,
              //     ),
              //     itemBuilder: (context, index) {
              //       final item = events[index];
              //       return GestureDetector(
              //         onTap: () {
              //           // ScaffoldMessenger.of(
              //           //   context,
              //           // ).showSnackBar(SnackBar(content: Text(item['name']!)));
              //         },
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.circular(12),
              //           child: Stack(
              //             alignment: Alignment.center,
              //             children: [
              //               // Зураг
              //               Positioned.fill(
              //                 child: Image.asset(
              //                   item['asset']!,
              //                   fit: BoxFit.cover,
              //                   errorBuilder: (ctx, err, stack) {
              //                     // Зураг олдохгүй бол placeholder
              //                     return Container(
              //                       color: Colors.grey[300],
              //                       child: Center(
              //                         child: Icon(Icons.image_not_supported),
              //                       ),
              //                     );
              //                   },
              //                 ),
              //               ),
              //               // Хар сүүдэртэй доороос тодруулах overlay (сорилт)
              //               Positioned.fill(
              //                 child: Container(
              //                   decoration: BoxDecoration(
              //                     gradient: LinearGradient(
              //                       colors: [
              //                         Colors.black.withOpacity(0.25),
              //                         Colors.transparent,
              //                       ],
              //                       begin: Alignment.bottomCenter,
              //                       end: Alignment.center,
              //                     ),
              //                   ),
              //                 ),
              //               ),
              //               // Текст төвд
              //               Padding(
              //                 padding: const EdgeInsets.symmetric(
              //                   horizontal: 8.0,
              //                 ),
              //                 child: Text(
              //                   item['name']!,
              //                   textAlign: TextAlign.center,
              //                   style: TextStyle(
              //                     color: Colors.white,
              //                     fontWeight: FontWeight.bold,
              //                     fontSize: 16,
              //                     shadows: [
              //                       Shadow(
              //                         blurRadius: 6,
              //                         color: Colors.black54,
              //                         offset: Offset(1, 1),
              //                       ),
              //                     ],
              //                   ),
              //                 ),
              //               ),
              //             ],
              //           ),
              //         ),
              //       );
              //     },
              //   ),
              // ),
              // Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 160,
              //   decoration: BoxDecoration(
              //     image: DecorationImage(
              //       image: AssetImage('assets/images/events/naadam.jpg'),
              //       fit: BoxFit.cover,
              //     ),
              //     gradient: LinearGradient(
              //       begin: Alignment.centerLeft,
              //       end: Alignment.center,
              //       colors: [black.withOpacity(0.9), black.withOpacity(0.5)],
              //     ),
              //   ),
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       SizedBox(height: 48),
              //       Text(
              //         'NAADAM',
              //         style: TextStyle(
              //           color: white,
              //           fontSize: 24,
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //       Text(
              //         '11 TO 13 JULY',
              //         style: TextStyle(
              //           color: white,
              //           fontSize: 24,
              //           fontWeight: FontWeight.w600,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 16),
              //   child: ClipRRect(
              //     borderRadius: BorderRadius.circular(12),
              //     child: Stack(
              //       children: [
              //         Image.asset('assets/images/events/naadam.jpg'),
              //         // Positioned(
              //         //   bottom: 48,
              //         //   top: 48,
              //         //   left: 16,
              //         //   child:
              //         // ),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
