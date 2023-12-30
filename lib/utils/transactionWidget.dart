import 'package:flutter/material.dart';
import 'package:wave/utils/constants.dart';
import 'transaction_model.dart';

class TransitionsWidget extends StatefulWidget {
  @override
  _TransitionsWidgetState createState() => _TransitionsWidgetState();
}

class _TransitionsWidgetState extends State<TransitionsWidget> {
  List<Transaction> transactions = [
    const Transaction(
      contact: 'Achat crédit pour le 78 481 94 31',
      number: '-2.000F',
      date: 'Déc. 26, 17:51',
    ),
    const Transaction(
      contact: 'Achat crédit pour le 78 481 94 31',
      number: '-2.000F',
      date: 'Déc. 26, 17:51',
    ),
    const Transaction(
      contact: 'Rétrait',
      number: '-40.000F',
      date: 'Déc. 26, 17:51',
    ),
    const Transaction(
      contact: 'Achat crédit pour le 78 481 94 31',
      number: '-2.000F',
      date: 'Déc. 26, 17:51',
    ),
    const Transaction(
      contact: 'Achat crédit pour le 78 481 94 31',
      number: '-2.000F',
      date: 'Déc. 26, 17:51',
    ),
    const Transaction(
      contact: 'Dépot',
      number: '20.000F',
      date: 'Déc. 26, 17:51',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((transaction) {
        return Container(
          color: const Color.fromARGB(255, 255, 255, 255),
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
            title: Row(
              children: [
                Expanded(
                  child: Text(
                    transaction.contact,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: primaryColor),
                    textAlign: TextAlign.left,
                  ),
                ),
                Text(
                  transaction.number,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: primaryColor,
                  ),
                  textAlign: TextAlign.right,
                ),
              ],
            ),
            subtitle: Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                transaction.date,
                textAlign: TextAlign.left,
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
