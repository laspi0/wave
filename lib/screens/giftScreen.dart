import 'package:flutter/material.dart';

class GiftScreen extends StatefulWidget {
  const GiftScreen({super.key});

  @override
  State<GiftScreen> createState() => _GiftScreenState();
}

class _GiftScreenState extends State<GiftScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 243, 244, 246),
          title: const Text(
            'Cadeaux',
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 243, 244, 246),
        body: Column(
          children: [
            const SizedBox(
              height: 12,
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: 8.0), // Ajustez la valeur selon vos besoins
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 199, 250, 191),
              ),
              height: 70,
              width: 500,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 8.0), // Ajustez la valeur selon vos besoins
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 228, 255, 224),
                    ),
                    height: 50,
                    width: 50,
                    child: const Icon(
                      Icons.card_giftcard,
                      size: 32,
                    ),
                  ),
                  RichText(
                      text: const TextSpan(
                          text: "Gagnez jusqu'à",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          children: [
                        TextSpan(
                            text: " 1.000.000F",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ))
                      ])),
                  const SizedBox(
                    width: 120,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const boxGift1(),
            const SizedBox(
              height: 15,
            ),
            const boxGift2(),
            const SizedBox(
              height: 15,
            ),
            const boxGift3(),
            const SizedBox(
              height: 15,
            ),
          ],
        ));
  }
}

class boxGift1 extends StatelessWidget {
  const boxGift1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 500,
      margin: const EdgeInsets.symmetric(
          horizontal: 8.0), // Ajustez la valeur selon vos besoins
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade400,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 0),
                height: 23,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 254, 234, 173),
                ),
                child: const Center(
                    child: Text(
                  "Expire le janv. 15",
                  style: TextStyle(fontWeight: FontWeight.w500),
                )),
              ),
              Container(
                height: 110,
                width: 110,
                // color: Colors.amber,
                child: Image.asset(
                  "assets/images/gift.png",
                  width: 130,
                  height: 130,
                ),
              ),
              const SizedBox(
                width: 100,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Pour déverouiller",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text("Payez 1.500F ou plus chez un marchand (0/1)"),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class boxGift2 extends StatelessWidget {
  const boxGift2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 500,
      margin: const EdgeInsets.symmetric(
          horizontal: 8.0), // Ajustez la valeur selon vos besoins
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade400,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 0),
                height: 23,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 254, 234, 173),
                ),
                child: const Center(
                    child: Text(
                  "Expire le janv. 15",
                  style: TextStyle(fontWeight: FontWeight.w500),
                )),
              ),
              SizedBox(
                height: 110,
                width: 110,
                // color: Colors.amber,
                child: Image.asset(
                  "assets/images/gift.png",
                  width: 130,
                  height: 130,
                ),
              ),
              const SizedBox(
                width: 100,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Pour déverouiller",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text("Payez 1.500F ou plus chez 2 marchands (0/2)"),
        ],
      ),
    );
  }
}

// ignore: camel_case_types
class boxGift3 extends StatelessWidget {
  const boxGift3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 500,
      margin: const EdgeInsets.symmetric(
          horizontal: 8.0), // Ajustez la valeur selon vos besoins
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey.shade400,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 0),
                height: 23,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: const Color.fromARGB(255, 254, 234, 173),
                ),
                child: const Center(
                    child: Text(
                  "Expire le janv. 15",
                  style: TextStyle(fontWeight: FontWeight.w500),
                )),
              ),
              SizedBox(
                height: 110,
                width: 110,
                // color: Colors.amber,
                child: Image.asset(
                  "assets/images/gift.png",
                  width: 130,
                  height: 130,
                ),
              ),
              const SizedBox(
                width: 100,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Pour déverouiller",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          const Text("Payez 1.500F ou plus chez 3 marchand (0/3)"),
        ],
      ),
    );
  }
}
