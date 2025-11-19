// import 'package:bnm_flutter/components/ui/color.dart';
// import 'package:bnm_flutter/src/auth/login_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class AccommodationDirectionPageArguments {
//   final String title;
//   AccommodationDirectionPageArguments({required this.title});
// }

// class AccommodationDirectionPage extends StatefulWidget {
//   final String title;
//   static const routeName = "AccommodationDirectionPage";
//   const AccommodationDirectionPage({super.key, required this.title});

//   @override
//   State<AccommodationDirectionPage> createState() =>
//       _AccommodationDirectionPageState();
// }

// class _AccommodationDirectionPageState
//     extends State<AccommodationDirectionPage> {
//   int currentIndex = 1;
//   final gradient = LinearGradient(
//     colors: [startColor, endColor],
//     begin: Alignment.centerLeft,
//     end: Alignment.centerRight,
//   );
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: white,
//         centerTitle: true,
//         elevation: 0,
//         automaticallyImplyLeading: false,
//         leading: GestureDetector(
//           onTap: () {
//             Navigator.of(context).pop();
//           },
//           child: Row(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               SizedBox(width: 25),
//               SvgPicture.asset('assets/svg/arrow_left.svg'),
//             ],
//           ),
//         ),
//         title: Text(
//           widget.title,
//           style: TextStyle(
//             color: zeroBlack,
//             fontSize: 16,
//             fontWeight: FontWeight.w600,
//           ),
//         ),
//         actions: [
//           GestureDetector(
//             onTap: () {
//               Navigator.of(context).pushNamed(LoginPage.routeName);
//             },
//             child: Row(
//               children: [
//                 SvgPicture.asset('assets/svg/profile_dest.svg'),
//                 SizedBox(width: 25),
//               ],
//             ),
//           ),
//         ],
//       ),
//       backgroundColor: white,
//       body: Column(
//         children: [
//           Padding(
//             padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 5),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Expanded(
//                       child: GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             currentIndex = 0;
//                           });
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8),
//                             color: currentIndex == 0 ? null : gray200,
//                             gradient: currentIndex == 0
//                                 ? LinearGradient(
//                                     colors: [startColor, endColor],
//                                     begin: Alignment.centerLeft,
//                                     end: Alignment.centerRight,
//                                   )
//                                 : null,
//                           ),
//                           padding: EdgeInsets.symmetric(vertical: 8),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               SvgPicture.asset(
//                                 currentIndex == 0
//                                     ? 'assets/svg/destination_tab_selected.svg'
//                                     : 'assets/svg/destination_tab_unselected.svg',
//                               ),
//                               SizedBox(width: 8),
//                               currentIndex == 0
//                                   ? Text(
//                                       'Destinations',
//                                       style: TextStyle(
//                                         color: white,
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w400,
//                                       ),
//                                     )
//                                   : ShaderMask(
//                                       shaderCallback: (bounds) =>
//                                           gradient.createShader(
//                                             Rect.fromLTWH(
//                                               0,
//                                               0,
//                                               bounds.width,
//                                               bounds.height,
//                                             ),
//                                           ),
//                                       child: Text(
//                                         'Destinations',
//                                         style: TextStyle(
//                                           color: white,
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.w400,
//                                         ),
//                                       ),
//                                     ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: 16),
//                     Expanded(
//                       child: GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             currentIndex = 1;
//                           });
//                         },
//                         child: Container(
//                           decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(8),
//                             color: currentIndex == 1 ? null : gray200,
//                             gradient: currentIndex == 1
//                                 ? LinearGradient(
//                                     colors: [startColor, endColor],
//                                     begin: Alignment.centerLeft,
//                                     end: Alignment.centerRight,
//                                   )
//                                 : null,
//                           ),
//                           padding: EdgeInsets.symmetric(vertical: 8),
//                           child: Row(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               SvgPicture.asset(
//                                 currentIndex == 1
//                                     ? 'assets/svg/acc_tab_selected.svg'
//                                     : 'assets/svg/acc_tab_unselected.svg',
//                               ),
//                               SizedBox(width: 8),
//                               currentIndex == 1
//                                   ? Text(
//                                       'Accommodation',
//                                       style: TextStyle(
//                                         color: white,
//                                         fontSize: 16,
//                                         fontWeight: FontWeight.w400,
//                                       ),
//                                     )
//                                   : ShaderMask(
//                                       shaderCallback: (bounds) =>
//                                           gradient.createShader(
//                                             Rect.fromLTWH(
//                                               0,
//                                               0,
//                                               bounds.width,
//                                               bounds.height,
//                                             ),
//                                           ),
//                                       child: Text(
//                                         'Accommodation',
//                                         style: TextStyle(
//                                           color: white,
//                                           fontSize: 16,
//                                           fontWeight: FontWeight.w400,
//                                         ),
//                                       ),
//                                     ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           currentIndex == 0
//               ? Center(child: Text('Nearby destinations'))
//               : Center(child: Text('Nearby accomodation')),
//         ],
//       ),
//     );
//   }
// }
