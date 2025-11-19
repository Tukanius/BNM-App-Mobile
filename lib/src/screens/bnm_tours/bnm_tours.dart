import 'package:bnm_flutter/components/custom_button.dart/custom_arrow.dart';
import 'package:bnm_flutter/components/ui/color.dart';
import 'package:bnm_flutter/src/screens/bnm_tours/tour_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BnmTours extends StatefulWidget {
  static const routeName = "BnmTours";
  const BnmTours({super.key});

  @override
  State<BnmTours> createState() => _BnmToursState();
}

class _BnmToursState extends State<BnmTours> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     'BNM Tours',
      //     style: TextStyle(
      //       color: black,
      //       fontSize: 18,
      //       fontWeight: FontWeight.w600,
      //     ),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: white,
      //   elevation: 0,
      //   leading: CustomArrow(
      //     onTap: () {
      //       Navigator.of(context).pop();
      //     },
      //   ),
      // ),
      // appBar: AppBar(backgroundColor: transparent),
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
                Image.asset(
                  'assets/images/bnm_tours_logo.png',
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 12),
                Text(
                  'Brave New Mongolia Tours',
                  style: TextStyle(
                    color: black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: detailBlue,
                ),
                padding: EdgeInsets.all(16),
                child: Text(
                  'Your gateway to authentic Mongolian adventures! We specialize in creating unforgettable journeys that showcase the beauty, culture, and traditions of Mongolia. From vast steppes to hidden gems, our expert guides ensure a seamless and enriching experience tailored to your interests. Explore Mongolia with passion and precision!',
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
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(TourDetail.routeName);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: white,
                  ),
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(12),
                        child: Image.asset(
                          'assets/images/bnm_tours_title.jpg',
                          fit: BoxFit.cover,
                          height: 75,
                          width: 75,
                        ),
                      ),
                      SizedBox(width: 16),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'KharaKhorum Tour',
                            style: TextStyle(
                              color: black,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            '6 Days 5 Nights',
                            style: TextStyle(
                              color: black,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 4),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: gray200,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 2,
                            ),
                            child: Text(
                              'from \$-',
                              style: TextStyle(
                                color: black,
                                fontSize: 11,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 32),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Contact us & Social media links',
                style: TextStyle(
                  color: primary,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            SizedBox(height: 6),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: detailBlue,
                ),
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset('assets/svg/bnm_phone.svg'),
                        SizedBox(width: 8),
                        Text(
                          '+976 86256868  (WhatsApp)',
                          style: TextStyle(
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SvgPicture.asset('assets/svg/mail.svg'),
                        SizedBox(width: 8),
                        Text(
                          'BravenewMongoliatours@gmail.com',
                          style: TextStyle(
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    Row(
                      children: [
                        SvgPicture.asset('assets/svg/site.svg'),
                        SizedBox(width: 8),
                        Text(
                          'BraveNewMongoliaTours.com',
                          style: TextStyle(
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SvgPicture.asset('assets/svg/fb.svg'),
                        SizedBox(width: 8),
                        Text(
                          'Brave New Mongolia Tours',
                          style: TextStyle(
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    Row(
                      children: [
                        SvgPicture.asset('assets/svg/yt.svg'),
                        SizedBox(width: 8),
                        Text(
                          'Brave New Mongolia Tours',
                          style: TextStyle(
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SvgPicture.asset('assets/svg/ig.svg'),
                        SizedBox(width: 8),
                        Text(
                          'Brave New Mongolia Tours',
                          style: TextStyle(
                            color: black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).padding.bottom + 16),
          ],
        ),
      ),
    );
  }
}
