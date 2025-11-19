import 'package:bnm_flutter/style/app_style.dart';
import 'package:flutter/material.dart';

class Currency extends StatefulWidget {
  const Currency({super.key});

  @override
  State<Currency> createState() => _CurrencyState();
}

class _CurrencyState extends State<Currency> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                image: DecorationImage(
                  image: NetworkImage(AppStyle.currency),
                  fit: BoxFit.cover,
                ),
              ),
              width: size.width,
              height: size.width * 0.8,
              child: SafeArea(
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back_rounded),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  Text(
                    'The official currency of Mongolia is the Mongolian Tugrik, often represented by the symbol "₮" and abbreviated as "MNT." The Tugrik is further divided into smaller units, with 1 Tugrik being equivalent to 100 Möngö (pronounced "möng") or "möngö" in everyday conversation.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Banknotes and coins are used for everyday transactions in Mongolia. Banknotes come in various denominations, including 10, 20, 50, 100, 500, 1,000, 5,000, 10,000 and 20,000 Tugrik notes. ',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'When traveling to Mongolian countryside, it`s advisable to have some local currency on hand for everyday expenses, as cash is the primary form of payment, especially in more remote areas. While most hotels, restaurants, and shops in Ulaanbaatar may accept credit cards, rural regions and smaller establishments typically prefer cash transactions. ',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'Before traveling to Mongolia, check the current exchange rates and ensure that your currency exchange needs are met, either before your trip or upon arrival at the airport or local banks. We recommend xe.com for some world exchange rates, up to date.',
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
