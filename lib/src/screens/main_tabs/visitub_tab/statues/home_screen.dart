// ignore_for_file: deprecated_member_use

import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/statues/BeatlesStatue.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/statues/BuddaStatue.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/statues/ChoibalsanStatue.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/statues/GenghisKhanStatue.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/statues/Janraisig.dart'
    show Janraisig;
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/statues/MarcoPoloStatue.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/statues/Renchin.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/statues/SukhbaatarStatue.dart';
import 'package:bnm_flutter/src/screens/main_tabs/visitub_tab/statues/ZorigStatue.dart';
import 'package:flutter/material.dart';

class StatuesMonuments extends StatefulWidget {
  const StatuesMonuments({super.key});

  @override
  State<StatuesMonuments> createState() => _StatuesMonumentsState();
}

class _StatuesMonumentsState extends State<StatuesMonuments> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Statues & Monuments',
          style: TextStyle(
            fontSize: 16,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_rounded,
            size: 28,
            color: Colors.black,
          ),
        ),
      ),

      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Genghiskhanstatue(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            'http://159.223.56.204:8000/asset/add/thumb/Chingis-1.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: size.width * 0.45,
                      height: size.width * 0.45,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87,
                              const Color.fromARGB(
                                31,
                                56,
                                56,
                                56,
                              ).withOpacity(0.001),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Genghis Khan Statue',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Zorigstatue(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            'http://159.223.56.204:8000/asset/add/thumb/zorig-1.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: size.width * 0.45,
                      height: size.width * 0.45,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87,
                              const Color.fromARGB(
                                31,
                                56,
                                56,
                                56,
                              ).withOpacity(0.001),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Zorig Statue',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Sukhbaatarstatue(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                        'http://159.223.56.204:8000/asset/add/thumb/sukhbaatar-1.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: size.width,
                  height: size.width * 0.45,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                          Colors.black87,
                          const Color.fromARGB(
                            31,
                            56,
                            56,
                            56,
                          ).withOpacity(0.001),
                        ],
                      ),
                    ),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Sukhbaatar Statue',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Choibalsanstatue(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            'http://159.223.56.204:8000/asset/add/thumb/choibalsan.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: size.width * 0.45,
                      height: size.width * 0.45,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87,
                              const Color.fromARGB(
                                31,
                                56,
                                56,
                                56,
                              ).withOpacity(0.001),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Choibalsan Statue',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Marcopolostatue(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            'http://159.223.56.204:8000/asset/add/thumb/MArcoPolo-1.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: size.width * 0.45,
                      height: size.width * 0.45,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87,
                              const Color.fromARGB(
                                31,
                                56,
                                56,
                                56,
                              ).withOpacity(0.001),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Marco Polo Statue',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Beatlesstatue(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                        'http://159.223.56.204:8000/asset/add/thumb/beatles-1.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: size.width,
                  height: size.width * 0.45,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                          Colors.black87,
                          const Color.fromARGB(
                            31,
                            56,
                            56,
                            56,
                          ).withOpacity(0.001),
                        ],
                      ),
                    ),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Beatles Statue',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Buddastatue(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            'http://159.223.56.204:8000/asset/add/thumb/budda-1.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: size.width * 0.45,
                      height: size.width,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87,
                              const Color.fromARGB(
                                31,
                                56,
                                56,
                                56,
                              ).withOpacity(0.001),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Budda Statue',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Janraisig(),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            'http://159.223.56.204:8000/asset/add/thumb/jansraiseg-1.jpg',
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      width: size.width * 0.45,
                      height: size.width,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.center,
                            colors: [
                              Colors.black87,
                              const Color.fromARGB(
                                31,
                                56,
                                56,
                                56,
                              ).withOpacity(0.001),
                            ],
                          ),
                        ),
                        child: const Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Text(
                              'Janraisig Statue',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Renchin()),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                        'http://159.223.56.204:8000/asset/add/thumb/Renchin-1-2.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  width: size.width * 0.45,
                  height: size.width,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.center,
                        colors: [
                          Colors.black87,
                          const Color.fromARGB(
                            31,
                            56,
                            56,
                            56,
                          ).withOpacity(0.001),
                        ],
                      ),
                    ),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Text(
                          'Renchin Statue',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // Scaffold(
    //     backgroundColor: Colors.white,
    //     appBar: AppBar(
    //       centerTitle: true,
    //       title: Text(
    //         'Statues',
    //         style: TextStyle(color: Colors.black, fontSize: 16),
    //       ),
    //       backgroundColor: Colors.white,
    //       elevation: 0,
    //       leading: IconButton(
    //           onPressed: () => Navigator.pop(context),
    //           icon: Icon(
    //             Icons.arrow_back_rounded,
    //             color: Colors.black,
    //             size: 28,
    //           )),
    //     ),
    //     body: SingleChildScrollView(
    //       physics: BouncingScrollPhysics(),
    //       child: Padding(
    //         padding: EdgeInsets.symmetric(
    //           horizontal: 15,
    //           vertical: 10,
    //         ),
    //         child: Column(
    //           children: [
    //             // GestureDetector(
    //             //   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => BuddhaStatue(),)),
    //             //   child: Container(
    //             //       decoration: BoxDecoration(
    //             //         borderRadius: BorderRadius.circular(8),
    //             //         image: DecorationImage(image: NetworkImage(data[0][2]), fit: BoxFit.cover)
    //             //       ),
    //             //       width: size.width,
    //             //       height: size.width * 0.5,
    //             //       child: Column(
    //             //         mainAxisAlignment: MainAxisAlignment.end,
    //             //         children: [
    //             //           Container(
    //             //             width: double.infinity,
    //             //             height: size.height / 4.5,
    //             //             decoration: BoxDecoration(
    //             //               borderRadius: BorderRadius.circular(8),
    //             //               gradient: LinearGradient(
    //             //                     begin: Alignment.bottomCenter,
    //             //                     end: Alignment.center,
    //             //                     colors: [
    //             //                       Colors.black87,
    //             //                       Colors.black12.withOpacity(0.05)
    //             //                     ])

    //             //             ),
    //             //             child: Align(
    //             //               alignment: Alignment.bottomLeft,
    //             //               child: Padding(
    //             //                 padding: const EdgeInsets.all(10),
    //             //                 child: Text(data[0][0], style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
    //             //               ),
    //             //             ),
    //             //           )
    //             //         ],
    //             //       ),
    //             //     ) ,
    //             // ),
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //               children: [
    //                 GestureDetector(
    //                   onTap: () => Navigator.push(
    //                       context,
    //                       MaterialPageRoute(
    //                         builder: (context) => Zorig(),
    //                       )),
    //                   child: Container(
    //                     decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(8),
    //                         image: DecorationImage(
    //                             image: NetworkImage(data[3][2]),
    //                             fit: BoxFit.cover)),
    //                     width: size.width * 0.45,
    //                     height: size.width * 0.8,
    //                     child: Column(
    //                       mainAxisAlignment: MainAxisAlignment.end,
    //                       children: [
    //                         Container(
    //                           width: double.infinity,
    //                           height: size.height / 4.5,
    //                           decoration: BoxDecoration(
    //                               borderRadius: BorderRadius.circular(8),
    //                               gradient: LinearGradient(
    //                                   begin: Alignment.bottomCenter,
    //                                   end: Alignment.center,
    //                                   colors: [
    //                                     Colors.black87,
    //                                     Colors.black12.withOpacity(0.05)
    //                                   ])),
    //                           child: Align(
    //                             alignment: Alignment.bottomLeft,
    //                             child: Padding(
    //                               padding: const EdgeInsets.all(10),
    //                               child: Text(data[3][0],
    //                                   style: TextStyle(
    //                                       fontSize: 16,
    //                                       fontWeight: FontWeight.bold,
    //                                       color: Colors.white)),
    //                             ),
    //                           ),
    //                         )
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //                 GestureDetector(
    //                   onTap: () => Navigator.push(
    //                       context,
    //                       MaterialPageRoute(
    //                         builder: (context) => Renchin(),
    //                       )),
    //                   child: Container(
    //                     decoration: BoxDecoration(
    //                         borderRadius: BorderRadius.circular(8),
    //                         image: DecorationImage(
    //                             image: NetworkImage(data[2][2]),
    //                             fit: BoxFit.cover)),
    //                     width: size.width * 0.45,
    //                     height: size.width * 0.8,
    //                     child: Column(
    //                       mainAxisAlignment: MainAxisAlignment.end,
    //                       children: [
    //                         Container(
    //                           width: double.infinity,
    //                           height: size.height / 4.5,
    //                           decoration: BoxDecoration(
    //                               borderRadius: BorderRadius.circular(8),
    //                               gradient: LinearGradient(
    //                                   begin: Alignment.bottomCenter,
    //                                   end: Alignment.center,
    //                                   colors: [
    //                                     Colors.black87,
    //                                     Colors.black12.withOpacity(0.05)
    //                                   ])),
    //                           child: Align(
    //                             alignment: Alignment.bottomLeft,
    //                             child: Padding(
    //                               padding: const EdgeInsets.all(10),
    //                               child: Text(data[2][0],
    //                                   style: TextStyle(
    //                                       fontSize: 16,
    //                                       fontWeight: FontWeight.bold,
    //                                       color: Colors.white)),
    //                             ),
    //                           ),
    //                         )
    //                       ],
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //             ),
    //             SizedBox(
    //               height: 10,
    //             ),
    //             GestureDetector(
    //               onTap: () => Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                     builder: (context) => Beatles(),
    //                   )),
    //               child: Container(
    //                 decoration: BoxDecoration(
    //                     borderRadius: BorderRadius.circular(8),
    //                     image: DecorationImage(
    //                         image: NetworkImage(data[1][2]),
    //                         fit: BoxFit.cover)),
    //                 width: size.width,
    //                 height: size.width * 0.5,
    //                 child: Column(
    //                   mainAxisAlignment: MainAxisAlignment.end,
    //                   children: [
    //                     Container(
    //                       width: double.infinity,
    //                       height: size.height / 4.8,
    //                       decoration: BoxDecoration(
    //                           borderRadius: BorderRadius.circular(8),
    //                           gradient: LinearGradient(
    //                               begin: Alignment.bottomCenter,
    //                               end: Alignment.center,
    //                               colors: [
    //                                 Colors.black87,
    //                                 Colors.black12.withOpacity(0.05)
    //                               ])),
    //                       child: Align(
    //                         alignment: Alignment.bottomLeft,
    //                         child: Padding(
    //                           padding: const EdgeInsets.all(10),
    //                           child: Text(data[1][0],
    //                               style: TextStyle(
    //                                   fontSize: 16,
    //                                   fontWeight: FontWeight.bold,
    //                                   color: Colors.white)),
    //                         ),
    //                       ),
    //                     )
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             SizedBox(
    //               height: 10,
    //             ),
    //             //  GestureDetector(
    //             //   onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Zaisan(),)),
    //             //    child: Container(
    //             //       decoration: BoxDecoration(
    //             //         borderRadius: BorderRadius.circular(8),
    //             //         image: DecorationImage(image: NetworkImage(data[4][2]), fit: BoxFit.cover)
    //             //       ),
    //             //       width: size.width ,
    //             //       height: size.width * 0.5,
    //             //       child: Column(
    //             //         mainAxisAlignment: MainAxisAlignment.end,
    //             //         children: [
    //             //           Container(
    //             //             width: double.infinity,
    //             //             height: size.height / 4.5,
    //             //             decoration: BoxDecoration(
    //             //               borderRadius: BorderRadius.circular(8),
    //             //               gradient: LinearGradient(
    //             //                     begin: Alignment.bottomCenter,
    //             //                     end: Alignment.center,
    //             //                     colors: [
    //             //                       Colors.black87,
    //             //                       Colors.black12.withOpacity(0.05)
    //             //                     ])

    //             //             ),
    //             //             child: Align(
    //             //               alignment: Alignment.bottomLeft,
    //             //               child: Padding(
    //             //                 padding: const EdgeInsets.all(10),
    //             //                 child: Text(data[4][0], style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
    //             //               ),
    //             //             ),
    //             //           )
    //             //         ],
    //             //       ),
    //             //     ) ,
    //             //  ),
    //           ],
    //         ),
    //       ),
    //     )
    //     // SingleChildScrollView(
    //     //   physics: BouncingScrollPhysics(),
    //     //   child: Column(
    //     //     children: List.generate(
    //     //       data.length,
    //     //       (index) {
    //     //         return Column(
    //     //           children: [
    //     //             Padding(
    //     //               padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    //     //               child: Column(
    //     //                 children: [
    //     //                   Row(
    //     //                     children: [
    //     //                       Icon(
    //     //                         Icons.location_on_sharp,
    //     //                         size: 30,
    //     //                         color: HexColor('#7FBFF2'),
    //     //                       ),
    //     //                       SizedBox(
    //     //                         width: 10,
    //     //                       ),
    //     //                       Text(
    //     //                         data[index][0],
    //     //                         style: TextStyle(
    //     //                             fontSize: 20, fontWeight: FontWeight.bold),
    //     //                       )
    //     //                     ],
    //     //                   ),
    //     //                   Text(
    //     //                     data[index][1],
    //     //                     textAlign: TextAlign.justify,
    //     //                   ),
    //     //                 ],
    //     //               ),
    //     //             ),
    //     //             Container(
    //     //               height: 250,
    //     //               child: ListView(
    //     //                 scrollDirection: Axis.horizontal,
    //     //                 children: [
    //     //                   Padding(
    //     //                     padding: const EdgeInsets.all(8.0),
    //     //                     child: Container(
    //     //                       width: size.width * 0.9,
    //     //                       decoration: BoxDecoration(
    //     //                           borderRadius: BorderRadius.circular(20),
    //     //                           image: DecorationImage(
    //     //                               image: NetworkImage(data[index][2]),
    //     //                               fit: BoxFit.cover,
    //     //                               filterQuality: FilterQuality.high)),
    //     //                     ),
    //     //                   ),
    //     //                   Padding(
    //     //                     padding: const EdgeInsets.all(8.0),
    //     //                     child: Container(
    //     //                       width: size.width * 0.9,
    //     //                       decoration: BoxDecoration(
    //     //                           borderRadius: BorderRadius.circular(20),
    //     //                           image: DecorationImage(
    //     //                               image: NetworkImage(data[index][3]),
    //     //                               fit: BoxFit.cover,
    //     //                               filterQuality: FilterQuality.high)),
    //     //                     ),
    //     //                   ),
    //     //                   Padding(
    //     //                     padding: const EdgeInsets.all(8.0),
    //     //                     child: Container(
    //     //                       width: size.width * 0.9,
    //     //                       decoration: BoxDecoration(
    //     //                           borderRadius: BorderRadius.circular(20),
    //     //                           image: DecorationImage(
    //     //                               image: NetworkImage(data[index][4]),
    //     //                               fit: BoxFit.cover,
    //     //                               filterQuality: FilterQuality.high)),
    //     //                     ),
    //     //                   ),
    //     //                   Padding(
    //     //                     padding: const EdgeInsets.all(8.0),
    //     //                     child: Container(
    //     //                       width: size.width * 0.9,
    //     //                       decoration: BoxDecoration(
    //     //                           borderRadius: BorderRadius.circular(20),
    //     //                           image: DecorationImage(
    //     //                               image: NetworkImage(data[index][5]),
    //     //                               fit: BoxFit.cover,
    //     //                               filterQuality: FilterQuality.high)),
    //     //                     ),
    //     //                   ),
    //     //                 ],
    //     //               ),
    //     //             ),
    //     //           ],
    //     //         );
    //     //       },
    //     //     ),
    //     //   ),
    //     // ),
    //     );
  }
}
