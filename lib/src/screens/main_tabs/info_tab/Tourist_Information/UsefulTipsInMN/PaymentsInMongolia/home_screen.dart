// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class PaymentsInMongolia extends StatefulWidget {
  const PaymentsInMongolia({super.key});

  @override
  State<PaymentsInMongolia> createState() => _PaymentsInMongoliaState();
}

class _PaymentsInMongoliaState extends State<PaymentsInMongolia> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Payments in Mongolia',
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
                'Payment processes in Mongolia for foreigners are generally straightforward, but there are some important considerations to keep in mind:',
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 15),
              const Text(
                'It`s important to inform your bank of your travel plans to avoid any issues with your credit or debit card while in Mongolia. Also, carry small denominations of Tugrik, as it can be challenging to get change for larger bills in some places. Overall, having a combination of cash and cards will ensure you have flexibility in your payment options while traveling in Mongolia.',
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
                        builder: (context) => const Currency(),
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
                              color: HexColor('#2984B0'),
                            ),
                            child: const Icon(
                              Icons.currency_exchange_sharp,
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
                        builder: (context) => const Cash(),
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
                              color: HexColor('#2984B0'),
                            ),
                            child: const Icon(
                              Icons.price_change_sharp,
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
                        builder: (context) => const Cards(),
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
                              color: HexColor('#2984B0'),
                            ),
                            child: const Icon(
                              Icons.add_card_outlined,
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
              //////////////////  TEXT1   ///////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text('Currency'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text('Cash'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text('Cards'),
                  ),
                ],
              ),
              //////////   TEXT1   ////////////////////
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const ATMs(),
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
                              color: HexColor('#2984B0'),
                            ),
                            child: const Icon(
                              Icons.phone_iphone_sharp,
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
                        builder: (context) => const ExchangeRates(),
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
                              color: HexColor('#2984B0'),
                            ),
                            child: const Icon(
                              Icons.currency_exchange_sharp,
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
                        builder: (context) => const TravelerCheck(),
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
                              color: HexColor('#2984B0'),
                            ),
                            child: const Icon(
                              Icons.cases_outlined,
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
              //////////////////  TEXT2   ///////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text('ATMs'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text('Exchange rates'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text(
                      'Traveler’s checks',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              //////////////////   TEXT2   ///////////////
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const MobilePayments(),
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
                              color: HexColor('#2984B0'),
                            ),
                            child: const Icon(
                              Icons.phone_android,
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
                        builder: (context) => const Tipping(),
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
                              color: HexColor('#2984B0'),
                            ),
                            child: const Icon(
                              Icons.tips_and_updates_outlined,
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
                        builder: (context) => const LanguageBarriers(),
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
                              color: HexColor('#2984B0'),
                            ),
                            child: const Icon(
                              Icons.live_help_rounded,
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
              //////////////////  TEXT3   ///////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text(
                      'Mobile payments',
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text('Tipping'),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text(
                      'Language barriers',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              //////////////////   TEXT3   ///////////////
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => const Receipts(),
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
                              color: HexColor('#2984B0'),
                            ),
                            child: const Icon(
                              Icons.receipt_long_rounded,
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
              //////////////////  TEXT3   ///////////////////////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: size.width * 0.28,
                    child: const Text('Receipts', textAlign: TextAlign.center),
                  ),
                ],
              ),
              //////////////////   TEXT3   ///////////////
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class Currency extends StatefulWidget {
  const Currency({super.key});

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 180),
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
                    color: HexColor('#2984B0'),
                  ),
                  child: const Icon(
                    Icons.currency_exchange_sharp,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Currency',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'The official currency of Mongolia is the Mongolian Tugrik (MNT). While some businesses, especially in Ulaanbaatar, may accept US dollars or other major foreign currencies, it`s best to use the local currency for most transactions. ATMs are widely available in the capital, allowing you to withdraw Tugrik.',
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

class Cash extends StatefulWidget {
  const Cash({super.key});

  @override
  State<Cash> createState() => _CashState();
}

class _CashState extends State<Cash> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 210),
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
                    color: HexColor('#2984B0'),
                  ),
                  child: const Icon(
                    Icons.price_change_sharp,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Cash',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Cash is the primary form of payment in Mongolia. Have a sufficient amount of local currency on hand, especially when traveling to rural areas, where credit card acceptance may be limited.',
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

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
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
                    color: HexColor('#2984B0'),
                  ),
                  child: const Icon(
                    Icons.add_card_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Cards',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'In major cities like Ulaanbaatar, you can use credit and debit cards at some hotels, upscale restaurants, and larger shops. Visa and MasterCard are more widely accepted than other card brands. However, always have some cash for backup, as not all businesses accept cards.',
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

class ATMs extends StatefulWidget {
  const ATMs({super.key});

  @override
  State<ATMs> createState() => _ATMsState();
}

class _ATMsState extends State<ATMs> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 205),
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
                    color: HexColor('#2984B0'),
                  ),
                  child: const Icon(
                    Icons.phone_iphone_sharp,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'ATMs',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'ATMs are common in Ulaanbaatar and some larger towns. International credit and debit cards are usually accepted at ATMs, making it easy to withdraw cash. Check with your bank regarding international ATM withdrawal fees.',
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

class ExchangeRates extends StatefulWidget {
  const ExchangeRates({super.key});

  @override
  State<ExchangeRates> createState() => _ExchangeRatesState();
}

class _ExchangeRatesState extends State<ExchangeRates> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 215),
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
                    color: HexColor('#2984B0'),
                  ),
                  child: const Icon(
                    Icons.currency_exchange_sharp,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Exchange Rates',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Be aware of exchange rates and fees when converting foreign currency to Tugrik. It`s recommended to exchange money at banks or official currency exchange offices for the best rates.',
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

class TravelerCheck extends StatefulWidget {
  const TravelerCheck({super.key});

  @override
  State<TravelerCheck> createState() => _TravelerCheckState();
}

class _TravelerCheckState extends State<TravelerCheck> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 220),
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
                    color: HexColor('#2984B0'),
                  ),
                  child: const Icon(
                    Icons.cases_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Traveler`s Checks',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Traveler`s checks are not commonly used in Mongolia. It`s best to rely on cash and cards for your financial needs.',
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

class MobilePayments extends StatefulWidget {
  const MobilePayments({super.key});

  @override
  State<MobilePayments> createState() => _MobilePaymentsState();
}

class _MobilePaymentsState extends State<MobilePayments> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 220),
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
                    color: HexColor('#2984B0'),
                  ),
                  child: const Icon(
                    Icons.phone_android,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Mobile payments',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Some businesses in Ulaanbaatar may accept mobile payment apps like WeChat Pay or Alipay, but this is not widespread.',
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

class Tipping extends StatefulWidget {
  const Tipping({super.key});

  @override
  State<Tipping> createState() => _TippingState();
}

class _TippingState extends State<Tipping> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 220),
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
                    color: HexColor('#2984B0'),
                  ),
                  child: const Icon(
                    Icons.tips_and_updates_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Tipping',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Tipping is not a common practice in Mongolia. While it`s appreciated in upscale restaurants and hotels, it`s not expected in most situations.',
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

class LanguageBarriers extends StatefulWidget {
  const LanguageBarriers({super.key});

  @override
  State<LanguageBarriers> createState() => _LanguageBarriersState();
}

class _LanguageBarriersState extends State<LanguageBarriers> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 220),
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
                    color: HexColor('#2984B0'),
                  ),
                  child: const Icon(
                    Icons.live_help_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Language barriers',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'When using cards, especially in rural areas, be prepared for language barriers. Ensure that the point-of-sale device is operated correctly and that the charged amount matches your purchase.',
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

class Receipts extends StatefulWidget {
  const Receipts({super.key});

  @override
  State<Receipts> createState() => _ReceiptsState();
}

class _ReceiptsState extends State<Receipts> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 220),
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
                    color: HexColor('#2984B0'),
                  ),
                  child: const Icon(
                    Icons.receipt_long_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Receipts',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 25),
                const Text(
                  'Ensure that the point-of-sale device is operated correctly and that the charged amount matches your purchase.Request receipts for your transactions, especially for significant purchases or services.',
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
