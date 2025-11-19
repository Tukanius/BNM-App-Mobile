import 'package:bnm_flutter/components/custom_button.dart/custom_arrow.dart';
import 'package:bnm_flutter/components/ui/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TourDetail extends StatefulWidget {
  static const routeName = "TourDetail";
  const TourDetail({super.key});

  @override
  State<TourDetail> createState() => _TourDetailState();
}

class _TourDetailState extends State<TourDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteGradient,
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/bnm_tours_title.jpg',
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: MediaQuery.of(context).padding.top,
                  child: CustomArrow(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Row(
              children: [
                SizedBox(width: 16),
                Text(
                  'KharaKhorum Tour',
                  style: TextStyle(
                    color: black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                '6 Days 5 Nights',
                style: TextStyle(
                  color: black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
              child: Text(
                'Overview',
                style: TextStyle(
                  color: primary,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: detailBlue,
                ),
                padding: EdgeInsets.all(16),
                child: Text(
                  'The Karakorum Tour offers a rich 6-day exploration of central Mongolia, blending cultural immersion, historical landmarks, and serene natural beauty. Highlights include the spiritual Erdenezuu Monastery and the tranquil shores of Ugii Lake.',
                  style: TextStyle(
                    color: black,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Image.asset('assets/images/bnm_detail_tour.png'),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/svg/tour_itinerary.svg',
                    height: 18,
                    width: 18,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Tour itinerary',
                    style: TextStyle(
                      color: black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: white,
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Text(
                      'Day 1',
                      style: TextStyle(
                        color: bnmRed,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Genghis Khan Statue Complex & Terelj National Park',
                        style: TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: white,
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Text(
                      'Day 2',
                      style: TextStyle(
                        color: bnmRed,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Khustai Nuruu National Park',
                        style: TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: white,
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Text(
                      'Day 3',
                      style: TextStyle(
                        color: bnmRed,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Ugii Lake',
                        style: TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: white,
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Text(
                      'Day 4',
                      style: TextStyle(
                        color: bnmRed,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Erdenezuu Monastery & Kharkhorin',
                        style: TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: white,
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Text(
                      'Day 5',
                      style: TextStyle(
                        color: bnmRed,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Nomadic Family & Elsen Tasarkhai',
                        style: TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: white,
                ),
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Text(
                      'Day 6',
                      style: TextStyle(
                        color: bnmRed,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        'Return to Ulaanbaatar',
                        style: TextStyle(
                          color: black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).padding.bottom + 32),
          ],
        ),
      ),
    );
  }
}
