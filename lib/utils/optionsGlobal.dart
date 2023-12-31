import 'package:flutter/material.dart';
import 'package:wave/screens/transfert.dart';
import 'package:wave/utils/credit_card.dart';
import 'package:wave/utils/options.dart';
import 'package:wave/utils/transactionWidget.dart';

Column optionGlobalWidget(BuildContext context) {
  return Column(
    children: [
      Container(
        constraints: const BoxConstraints(minHeight: 1000),
        color: const Color.fromARGB(255, 255, 255, 255),
        width: double.infinity,
        // height: 1000,
        child: Column(
          children: [
            GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TransferPage()),
                    );
                  },
                  child: optionWidget(
                      icon: Icons.person_2,
                      color: Colors.blue,
                      text: "Transfert"),
                ),
                optionWidget(
                    icon: Icons.shopping_cart_sharp,
                    color: Colors.orange,
                    text: "Paiements"),
                optionWidget(
                    icon: Icons.phone_iphone_outlined,
                    color: Colors.blue,
                    text: "Crédit"),
                optionWidget(
                    icon: Icons.account_balance_outlined,
                    color: Colors.red,
                    text: "Banque"),
                optionWidget(
                    icon: Icons.card_giftcard,
                    color: Colors.green,
                    text: "Cadeaux"),
                GestureDetector(
                  onTap: () {},
                  child: optionWidget(
                      icon: Icons.credit_card_outlined,
                      color: Colors.teal,
                      text: "Cartes"),
                ),
              ],
            ),
            // credit(),
            TransitionsWidget(),
          ],
        ),
      ),
    ],
  );
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Scaffold(),
    );
  }
}
