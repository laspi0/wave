import 'package:flutter/material.dart';
import 'package:wave/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            const Size.fromHeight(65.0), // Hauteur personnalisée de l'AppBar
        child: AppBar(
          backgroundColor: primaryColor,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
              size: 25,
            ),
          ),
          title: Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                isVisible
                    ? RichText(
                        text: const TextSpan(
                            text: "5.000",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                            ),
                            children: [
                            TextSpan(
                                text: "F",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ))
                          ]))
                    : const Text(
                        "••••••••",
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                RichText(
                    text: const TextSpan(
                  children: [],
                )),
                IconButton(
                  onPressed: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  icon: isVisible
                      ? const Icon(
                          Icons.visibility_off_rounded,
                          size: 16,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.visibility_rounded,
                          size: 16,
                          color: Colors.white,
                        ),
                )
              ]),
          centerTitle: true,
        ),
      ),
    );
  }
}
