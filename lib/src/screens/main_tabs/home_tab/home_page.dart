// ignore_for_file: deprecated_member_use
import 'package:bnm_flutter/components/ui/color.dart';
// import 'package:bnm_flutter/src/screens/bnm_tours/bnm_tours.dart';
import 'package:bnm_flutter/src/screens/events_page/events_page.dart';
import 'package:bnm_flutter/src/screens/about_bnm/about_bnm.dart';
import 'package:bnm_flutter/src/screens/main_tabs/home_tab/search_page.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  final Function(int) onChange;
  static const routeName = "HomePage";
  const HomePage({super.key, required this.onChange});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgList = [
    'assets/images/ads1.jpg',
    'assets/images/ads2.jpg',
    'assets/images/ads3.jpg',
  ];
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Stack(
          children: [
            Container(
              height: 290,
              width: size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/home_page.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/images/home_frame.png',
                    fit: BoxFit.cover,
                    width: size.width,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).padding.top + 12),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed(
                              SearchPage.routeName,
                              arguments: SearchPageArguments(
                                controller: textController,
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: white,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                SvgPicture.asset('assets/svg/search.svg'),
                                SizedBox(width: 8),
                                Text(
                                  'Search',
                                  style: TextStyle(
                                    color: gray400,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // SizedBox(width: 12),
                      // GestureDetector(
                      //   onTap: () {
                      //     Navigator.of(context).pushNamed(LoginPage.routeName);
                      //   },
                      //   child: SvgPicture.asset('assets/svg/profile.svg'),
                      // ),
                    ],
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Welcome to the Land of Stories ',
                          style: TextStyle(
                            color: white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: 'Mongolia!',
                          style: TextStyle(
                            color: white,
                            fontSize: 30,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: 16),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HomeMenuItem(
                            title: 'Visit UB',
                            imagePath:
                                'assets/images/thumbnails/visitub_thumbnail.jpg',
                            onTap: () => widget.onChange(2),
                          ),
                          const SizedBox(width: 12),
                          HomeMenuItem(
                            title: 'Events',
                            onTap: () {
                              Navigator.of(
                                context,
                              ).pushNamed(EventsPage.routeName);
                            },
                            imagePath:
                                'assets/images/thumbnails/event_thumbnail.jpg',
                          ),
                          const SizedBox(width: 12),
                          HomeMenuItem(
                            title: 'Information',
                            imagePath:
                                'assets/images/thumbnails/info_thumbnail.jpg',
                            onTap: () => widget.onChange(4),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HomeMenuItem(
                            title: 'Destination',
                            imagePath:
                                'assets/images/thumbnails/destination_thumbnail.jpg',
                            onTap: () => widget.onChange(3),
                          ),
                          const SizedBox(width: 12),
                          HomeMenuItem(
                            title: 'Accommodation',
                            imagePath:
                                'assets/images/thumbnails/acc_thumbnail.jpg',
                            onTap: () => widget.onChange(1),
                          ),
                          const SizedBox(width: 12),
                          HomeMenuItem(
                            title: 'Commercial',
                            imagePath:
                                'assets/images/thumbnails/commertial_thumbnail.jpg',
                            onTap: () => widget.onChange(5),
                          ),
                        ],
                      ),
                      SizedBox(height: 16),

                      // GestureDetector(
                      //   onTap: () {
                      //     Navigator.of(context).pushNamed(BnmTours.routeName);
                      //   },
                      //   child: ClipRRect(
                      //     borderRadius: BorderRadiusGeometry.circular(12),
                      //     child: Stack(
                      //       alignment: Alignment.center,
                      //       children: [
                      //         Image.asset(
                      //           'assets/images/thumbnails/bnm_tour.jpg',
                      //           fit: BoxFit.cover,
                      //         ),
                      //         Container(
                      //           decoration: BoxDecoration(
                      //             border: Border.all(color: white),
                      //             color: black.withOpacity(0.3),
                      //             borderRadius: BorderRadius.circular(12),
                      //           ),
                      //           padding: EdgeInsets.symmetric(
                      //             horizontal: 10,
                      //             vertical: 8,
                      //           ),
                      //           child: Container(
                      //             child: Text(
                      //               'BNM TOURS',
                      //               style: TextStyle(
                      //                 color: white,
                      //                 fontSize: 18,
                      //                 fontWeight: FontWeight.w700,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       ],
                      //     ),
                      //   ),
                      // ),
                      // SizedBox(height: 16),
                      // ClipRRect(
                      //   borderRadius: BorderRadiusGeometry.circular(12),
                      //   child: Stack(
                      //     alignment: Alignment.center,
                      //     children: [
                      //       Image.asset(
                      //         'assets/images/thumbnails/community_thumbnail.jpg',
                      //         fit: BoxFit.cover,
                      //       ),
                      //       Container(
                      //         decoration: BoxDecoration(
                      //           border: Border.all(color: white),
                      //           color: black.withOpacity(0.3),
                      //           borderRadius: BorderRadius.circular(12),
                      //         ),
                      //         padding: EdgeInsets.symmetric(
                      //           horizontal: 10,
                      //           vertical: 8,
                      //         ),
                      //         child: Container(
                      //           child: Text(
                      //             'COMMUNITY',
                      //             style: TextStyle(
                      //               color: white,
                      //               fontSize: 18,
                      //               fontWeight: FontWeight.w700,
                      //             ),
                      //           ),
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      // SizedBox(height: 16),
                    ],
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    viewportFraction: 0.9,
                    enableInfiniteScroll: true,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.15,
                    aspectRatio: 16 / 9,
                    autoPlay: true,
                  ),
                  items: imgList.map((item) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.asset(item, fit: BoxFit.cover),
                      ),
                    );
                  }).toList(),
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(AboutBnm.routeName);
                    },
                    child: Image.asset(
                      'assets/images/about_bnm.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).padding.bottom + 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomeMenuItem extends StatelessWidget {
  final String title;
  final String imagePath;
  final VoidCallback? onTap;

  const HomeMenuItem({
    Key? key,
    required this.title,
    required this.imagePath,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(12),
                child: Image.asset(imagePath, fit: BoxFit.cover),
              ),
              const SizedBox(height: 4),
              Text(
                title,
                style: TextStyle(
                  color: darkGrey,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
