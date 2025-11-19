// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class MobileNetwork extends StatefulWidget {
  const MobileNetwork({super.key});

  @override
  State<MobileNetwork> createState() => _MobileNetworkState();
}

class _MobileNetworkState extends State<MobileNetwork> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Mobile network',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 14,
          ),
        ),
        backgroundColor: Colors.white10,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const Text(
                'Mobile network coverage in Mongolia is well-established, especially in urban areas and along major transportation routes. Here is some information about the mobile network in Mongolia:',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const MobileOperators(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.2,
                            height: size.width * 0.2,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#B91332'),
                            ),
                            child: const Icon(
                              Icons.supervisor_account_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const NetworkCoverage(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.2,
                            height: size.width * 0.2,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#B91332'),
                            ),
                            child: const Icon(
                              Icons.account_tree_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const SIMCards(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.2,
                            height: size.width * 0.2,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#B91332'),
                            ),
                            child: const Icon(
                              Icons.sim_card,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              /////////////////////   TEXT1   /////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text(
                      'Mobile operators',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text(
                      'Network coverage',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text('SIM cards'),
                  ),
                ],
              ),
              /////////////////////////   TEXT1   ////////////////////
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const InternetAccess(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.2,
                            height: size.width * 0.2,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#B91332'),
                            ),
                            child: const Icon(
                              Icons.blur_circular_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const TopUpOptions(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.2,
                            height: size.width * 0.2,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#B91332'),
                            ),
                            child: const Icon(
                              Icons.currency_exchange_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const InternationalRoaming(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.2,
                            height: size.width * 0.2,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#B91332'),
                            ),
                            child: const Icon(
                              Icons.travel_explore_outlined,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              /////////////////////   TEXT2   /////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text(
                      'Internet access',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text(
                      'Top-up options',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text(
                      'International Roaming',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              /////////////////////////   TEXT2   ////////////////////
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const LocalMobileApps(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.2,
                            height: size.width * 0.2,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#B91332'),
                            ),
                            child: const Icon(
                              Icons.phone_android_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const Language(),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white,
                      ),
                      width: size.width * 0.28,
                      height: size.width * 0.28,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: size.width * 0.2,
                            height: size.width * 0.2,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: HexColor('#B91332'),
                            ),
                            child: const Icon(
                              Icons.abc,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    width: size.width * 0.28,
                    height: size.width * 0.28,
                  ),
                ],
              ),
              /////////////////////   TEXT3   /////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text(
                      'Local mobile apps',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text('Language', textAlign: TextAlign.center),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                  ),
                ],
              ),
              /////////////////////////   TEXT3   ////////////////////
            ],
          ),
        ),
      ),
    );
  }
}

class MobileOperators extends StatefulWidget {
  const MobileOperators({super.key});

  @override
  State<MobileOperators> createState() => _MobileOperatorsState();
}

class _MobileOperatorsState extends State<MobileOperators> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 200),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#B91332'),
                  ),
                  child: const Icon(
                    Icons.supervisor_account_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Mobile operators',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Mongolia has several mobile operators that offer reliable network services. Some of the major ones include MobiCom, Unitel (G-Mobile), and Skytel.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NetworkCoverage extends StatefulWidget {
  const NetworkCoverage({super.key});

  @override
  State<NetworkCoverage> createState() => _NetworkCoverageState();
}

class _NetworkCoverageState extends State<NetworkCoverage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 200),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#B91332'),
                  ),
                  child: const Icon(
                    Icons.account_tree_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Network coverage',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Urban areas, including the capital city, Ulaanbaatar, have strong mobile network coverage. You can expect good coverage in towns and along major highways. However, more remote and rural areas may have limited or no coverage.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SIMCards extends StatefulWidget {
  const SIMCards({super.key});

  @override
  State<SIMCards> createState() => _SIMCardsState();
}

class _SIMCardsState extends State<SIMCards> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 200),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#B91332'),
                  ),
                  child: const Icon(
                    Icons.sim_card,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Prepaid SIM cards',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'It`s easy to purchase prepaid SIM cards from mobile operators at airports, stores, and kiosks. These SIM cards allow you to have a local phone number and data access during your stay.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InternetAccess extends StatefulWidget {
  const InternetAccess({super.key});

  @override
  State<InternetAccess> createState() => _InternetAccessState();
}

class _InternetAccessState extends State<InternetAccess> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 200),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#B91332'),
                  ),
                  child: const Icon(
                    Icons.blur_circular_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Internet access',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  '3G and 4G/LTE data services are widely available in major cities, providing good internet speeds. In some remote areas, you may experience slower data speeds or no data coverage.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TopUpOptions extends StatefulWidget {
  const TopUpOptions({super.key});

  @override
  State<TopUpOptions> createState() => _TopUpOptionsState();
}

class _TopUpOptionsState extends State<TopUpOptions> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 200),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#B91332'),
                  ),
                  child: const Icon(
                    Icons.currency_exchange_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Top-Up Options',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'You can easily top up your prepaid mobile account with additional data or call credits at convenience stores, kiosks, and mobile operator service centers.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InternationalRoaming extends StatefulWidget {
  const InternationalRoaming({super.key});

  @override
  State<InternationalRoaming> createState() => _InternationalRoamingState();
}

class _InternationalRoamingState extends State<InternationalRoaming> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 200),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#B91332'),
                  ),
                  child: const Icon(
                    Icons.travel_explore_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'International Roaming',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Many international visitors find it convenient to use their home country`s SIM card for international roaming in Mongolia. Be sure to check with your home mobile provider for international roaming rates and options.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LocalMobileApps extends StatefulWidget {
  const LocalMobileApps({super.key});

  @override
  State<LocalMobileApps> createState() => _LocalMobileAppsState();
}

class _LocalMobileAppsState extends State<LocalMobileApps> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 200),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#B91332'),
                  ),
                  child: const Icon(
                    Icons.phone_android_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Local Mobile Apps',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Some mobile operators have apps for services like topping up your account, checking your balance, and managing your mobile data usage. These can be helpful during your stay.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Language extends StatefulWidget {
  const Language({super.key});

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 200),
      child: Scaffold(
        backgroundColor: Colors.black12.withOpacity(0.01),
        body: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
          ),
          width: double.maxFinite,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: size.width * 0.2,
                  height: size.width * 0.2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: HexColor('#B91332'),
                  ),
                  child: const Icon(Icons.abc, color: Colors.white, size: 35),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Language',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'While some mobile operators may offer customer service in English, it`s a good idea to familiarize yourself with basic Mongolian phrases for any communication or assistance you may need.',
                  textAlign: TextAlign.justify,
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.blue.shade900,
                  ),
                  width: size.width,
                  height: size.width * 0.15,
                  child: TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      'Close',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
