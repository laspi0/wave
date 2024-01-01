import 'package:u_credit_card/u_credit_card.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
CreditCardUi credit_card1() {
  return const CreditCardUi(
    cardHolderFullName: 'Lassana Diarra',
    cardNumber: '4123456781234567',
    validFrom: '01/23',
    validThru: '01/28',
    topLeftColor: Colors.blue,
    doesSupportNfc: true,
    placeNfcIconAtTheEnd: true,
    cardType: CardType.debit,
    cardProviderLogo: FlutterLogo(),
    cardProviderLogoPosition: CardProviderLogoPosition.right,
  );
}

CreditCardUi credit_card2() {
  return const CreditCardUi(
    cardHolderFullName: 'Lassana Diarra',
    cardNumber: '4123456781234567',
    validFrom: '01/23',
    validThru: '01/28',
    topLeftColor: Colors.black,
    doesSupportNfc: true,
    placeNfcIconAtTheEnd: true,
    cardType: CardType.debit,
    cardProviderLogo: FlutterLogo(),
    cardProviderLogoPosition: CardProviderLogoPosition.right,
  );
}

CreditCardUi credit_card3() {
  return const CreditCardUi(
    cardHolderFullName: 'Lassana Diarra',
    cardNumber: '4123456781234567',
    validFrom: '01/23',
    validThru: '01/28',
    topLeftColor: Colors.orange,
    doesSupportNfc: true,
    placeNfcIconAtTheEnd: true,
    cardType: CardType.debit,
    cardProviderLogo: FlutterLogo(),
    cardProviderLogoPosition: CardProviderLogoPosition.right,
  );
}

CreditCardUi credit_card4() {
  return const CreditCardUi(
    cardHolderFullName: 'Lassana Diarra',
    cardNumber: '4123456781234567',
    validFrom: '01/23',
    validThru: '01/28',
    topLeftColor: Colors.teal,
    doesSupportNfc: true,
    placeNfcIconAtTheEnd: true,
    cardType: CardType.debit,
    cardProviderLogo: FlutterLogo(),
    cardProviderLogoPosition: CardProviderLogoPosition.right,
  );
}

CreditCardUi credit_card5() {
  return const CreditCardUi(
    cardHolderFullName: 'Lassana Diarra',
    cardNumber: '4123456781234567',
    validFrom: '01/23',
    validThru: '01/28',
    topLeftColor: Colors.red,
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
    return Container(child: credit_card2());
  }
}
