import 'package:flutter/material.dart';
import 'package:wave/screens/home_screen.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final String correctPin = '1234';
  final TextEditingController pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                _buildTopSection(),
                _buildPinInput(),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          _buildKeyboard(),
        ],
      ),
    );
  }

  Widget _buildTopSection() {
    return Column(
      children: <Widget>[
        Image.asset(
          'assets/images/logo.png',
          width: 100.0,
          height: 100.0,
        ),
        SizedBox(height: 150.0),
        Text(
          'Votre code secret est requis pour déverrouiller',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }

  Widget _buildPinInput() {
    List<Widget> pinIndicators = List.generate(
      4,
      (index) => _buildPinDot(isFilled: index < pinController.text.length),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: pinIndicators,
      ),
    );
  }

  Widget _buildPinDot({required bool isFilled}) {
    return Container(
      width: 13.0,
      height: 13.0,
      margin: const EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(
        color: isFilled
            ? const Color.fromARGB(255, 174, 235, 254)
            : Colors.transparent,
        border: Border.all(
          color: const Color.fromARGB(255, 174, 235, 254),
          width: 1.0,
        ),
        shape: BoxShape.circle,
      ),
    );
  }

  Widget _buildKeyboard() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildNumberButton('1'),
            _buildNumberButton('2'),
            _buildNumberButton('3'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildNumberButton('4'),
            _buildNumberButton('5'),
            _buildNumberButton('6'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _buildNumberButton('7'),
            _buildNumberButton('8'),
            _buildNumberButton('9'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                print("Mot de passe oublié ?");
              },
              child: Text(
                'Oublié ?',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildNumberButton('0'),
            Icon(Icons.fingerprint_rounded),
          ],
        ),
      ],
    );
  }

  Widget _buildNumberButton(String digit) {
    return InkWell(
      onTap: () {
        setState(() {
          String currentPin = pinController.text + digit;
          if (currentPin.length <= 5) {
            pinController.text = currentPin;
            if (currentPin.length == 4) {
              if (currentPin == correctPin) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              } else {
                // Si le code PIN est incorrect, réinitialisez les indicateurs de code PIN
                pinController.clear();
              }
            }
          }
        });
      },
      child: Container(
        width: 70.0,
        height: 70.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Text(
            digit,
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
