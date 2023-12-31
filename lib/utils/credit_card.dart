import 'package:u_credit_card/u_credit_card.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
CreditCardUi credit_card() {
  return const CreditCardUi(
    cardHolderFullName: 'Lassana Diarra',
    cardNumber: '4123456781234567',
    validFrom: '01/23',
    validThru: '01/28',
    topLeftColor: Color.fromARGB(255, 0, 89, 255),
    doesSupportNfc: true,
    placeNfcIconAtTheEnd: true,
    cardType: CardType.debit,
    cardProviderLogo: FlutterLogo(),
    cardProviderLogoPosition: CardProviderLogoPosition.right,
  );
}

// ignore: camel_case_types
class credit extends StatelessWidget {
  const credit({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child: credit_card());
  }
}
