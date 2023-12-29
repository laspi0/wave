import 'package:flutter/material.dart';
import 'package:wave/utils/constants.dart';

Container transtions() {
  return Container(
    color: const Color.fromARGB(255, 255, 255, 255),
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
          title: Row(
            children: [
              Expanded(
                child: Text(
                  'Achat crédit pour le 78 481 94 31',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      color: primaryColor), // Nom du premier contact
                  textAlign: TextAlign.left,
                ),
              ),
              Text(
                '-2.000F',
                style: TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.w600), // Numéro du premier contact
                textAlign: TextAlign.right,
              ),
            ],
          ),
          subtitle: const Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: Text(
              'Déc. 26, 17:51', // Date du premier appel
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ],
    ),
  );
}
