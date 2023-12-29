import 'package:flutter/material.dart';

Container cardWidget() {
  return Container(
    padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.symmetric(vertical: 18, horizontal: 70),
    height: 100,
    width: 100,
    decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20)),
    child: Column(
      children: [
        Image.asset(
          "assets/images/code_qr.png",
          width: 130,
          height: 130,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.photo_camera, size: 14),
            SizedBox(
              width: 3,
            ),
            Text(
              "Scanner",
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
            )
          ],
        )
      ],
    ),
  );
}
