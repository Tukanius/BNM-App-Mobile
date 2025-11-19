import 'package:bnm_flutter/components/custom_button.dart/custom_arrow.dart';
import 'package:bnm_flutter/components/ui/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutBnm extends StatefulWidget {
  static const routeName = "AboutBnm";
  const AboutBnm({super.key});

  @override
  State<AboutBnm> createState() => _AboutBnmState();
}

class _AboutBnmState extends State<AboutBnm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        leading: CustomArrow(
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'About BNM',
          style: TextStyle(
            color: black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                        image: AssetImage('assets/images/about_bnm_bg.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(26),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Exploring Mongolia,',
                            style: TextStyle(
                              color: white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Text(
                            'One Journey at a Time',
                            style: TextStyle(
                              color: white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    "At Brave New Mongolia, we are on a mission to document Mongolia in its truest form—through firsthand experiences, real encounters, and immersive storytelling. Our platform is more than just a guide; it's a living archive of Mongolia’s landscapes, traditions, and people, built through travel, technology, and media.'",
                    style: TextStyle(
                      color: black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Who We Are",
                    style: TextStyle(
                      color: black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Brave New Mongolia is powered by a team of IT engineers, media professionals, and tourism experts, but at its core, it's a father-son expedition. While the team operates behind the scenes, every image, video, and piece of knowledge is gathered on the road—through personal experiences, interviews, and deep cultural engagement.",
                    style: TextStyle(
                      color: black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Expanded(
                        child: Image.asset(
                          'assets/images/3dmodel1.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          'assets/images/3dmodel2.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          'assets/images/3dmodel3.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Expanded(
                        child: Image.asset(
                          'assets/images/3dmodel4.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      // Image.asset('assets/images/3dmodel4.png', fit: BoxFit.cover),
                    ],
                  ),
                  SizedBox(height: 6),
                  Text(
                    "This is a field-driven project, fueled by exploration. We go where the stories are, meet the people who hold Mongolia’s untold knowledge, and capture moments that define its heritage",
                    style: TextStyle(
                      color: black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "What We Offer",
                    style: TextStyle(
                      color: black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Our work spans three interconnected products, each designed to bring authentic Mongolian experiences to a global audience:",
                    style: TextStyle(
                      color: black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 8),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/svg/check_bnm.svg'),
                      SizedBox(width: 8),
                      Expanded(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'The Web Platform ',
                                style: TextStyle(
                                  color: black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text:
                                    '– A digital hub of high-quality travel data, carefully curated from firsthand explorations.',
                                style: TextStyle(
                                  color: black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/svg/check_bnm.svg'),
                      SizedBox(width: 8),
                      Expanded(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'The Mobile App ',
                                style: TextStyle(
                                  color: black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text:
                                    '– A user-friendly companion for travelers, featuring real-time insights, community discussions, and direct access to essential information.',
                                style: TextStyle(
                                  color: black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/svg/check_bnm.svg'),
                      SizedBox(width: 8),
                      Expanded(
                        child: RichText(
                          textAlign: TextAlign.justify,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'The Guidebook ',
                                style: TextStyle(
                                  color: black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text:
                                    '– A future print and digital resource built on the foundation of lived experiences, rather than secondhand information.',
                                style: TextStyle(
                                  color: black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Authenticity at the Core",
                    style: TextStyle(
                      color: black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "Mongolia’s story should be told by its landscapes, its people, and its history—not just by those who visit it. That’s why we collaborate with nomads, artisans, historians, and local experts, ensuring that the knowledge we share is as real as the terrain we walk. Every fact, image, and insight is gathered firsthand, making Brave New Mongolia the most accurate and immersive source for those seeking to explore the country.",
                    style: TextStyle(
                      color: black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "A Father-Son Legacy",
                    style: TextStyle(
                      color: black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.asset(
                            'assets/images/legacy1.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),

                          child: Image.asset(
                            'assets/images/legacy2.jpg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Text(
                    "This journey isn’t just about exploration—it’s about passing down knowledge. My son is growing up alongside this project, learning directly from masters of Mongolian tradition, history, and craft. His curiosity drives the narrative, and through his eyes, travelers can rediscover Mongolia from the ground up.",
                    style: TextStyle(
                      color: black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 16),
                  Text(
                    "Join the Journey",
                    style: TextStyle(
                      color: black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "We are constantly expanding our database, pushing beyond mainstream attractions to capture the heart of Mongolia in its rawest, most beautiful form. Whether you’re a traveler, a researcher, or someone simply curious about Mongolia, this platform is built for you. ",
                    style: TextStyle(
                      color: black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 8),
                  Text(
                    "For business inquiries, collaborations, or partnerships, feel free to reach out",
                    style: TextStyle(
                      color: black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
            Image.asset(
              'assets/images/about_bnm_detail.png',
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'This is just the beginning. Follow our journey, explore Mongolia with us, and be part of a growing legacy.',
                style: TextStyle(
                  color: black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: MediaQuery.of(context).padding.bottom + 50),
          ],
        ),
      ),
    );
  }
}
