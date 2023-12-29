 import 'package:flutter/material.dart';

 Column optionWidget(
      {required IconData icon,
      required MaterialColor color,
      required String text}) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: color.withOpacity(0.5),
              borderRadius: BorderRadius.circular(50)),
          padding: const EdgeInsets.all(8),
          child: Icon(
            icon,
            size: 40,
            color: color,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          text,
          style: const TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }