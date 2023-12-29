import 'package:flutter/material.dart';
import 'package:wave/utils/card.dart';
import 'package:wave/utils/constants.dart';
import 'package:wave/utils/optionsGlobal.dart';
import 'package:wave/utils/transactions.dart';

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
      backgroundColor: secondColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              backgroundColor: primaryColor,
              pinned: true,
              floating: true,
              expandedHeight: 100,
              leading: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.settings,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                title: Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:
                        CrossAxisAlignment.center, // Ajouter cette ligne
                    children: [
                      isVisible
                          ? RichText(
                              text: const TextSpan(
                                  text: "500.000",
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
                      const SizedBox(
                        width: 2,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: isVisible
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
                      ),
                    ],
                  ),
                ),
              )),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: 1000,
                  color: const Color.fromARGB(255, 139, 139, 139),
                  child: Stack(
                    children: [
                      Container(
                        color: primaryColor,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 120),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),
                      ),
                      Container(
                        height: 200,
                        // width:
                        margin: const EdgeInsets.symmetric(horizontal: 50),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blue,
                        ),
                        width: MediaQuery.of(context).size.width,
                        child: Container(child: cardWidget()),
                      ),
                      Positioned(
                          top: 200,
                          left: 10,
                          right: 10,
                          child: Column(
                            children: [
                              optionGlobalWidget(),
                            ],
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
