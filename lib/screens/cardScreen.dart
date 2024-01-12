import 'package:flutter/material.dart';
import '../utils/credit_card.dart';

class CardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cartes',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
      ),
      body: scaf(),
    );
  }
}

class scaf extends StatelessWidget {
  const scaf({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200, // Hauteur des conteneurs
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                const SizedBox(width: 10),
                credit_card1(),
                const SizedBox(width: 10),
                credit_card2(),
                const SizedBox(width: 10),
                credit_card3(),
                const SizedBox(width: 10),
                credit_card4(),
                const SizedBox(width: 10),
                credit_card5(),
                const SizedBox(width: 10),
              ],
            ),
          ),
          SizedBox(height: 20), // Espace entre les deux listes
          Expanded(
            child: ListView(
              children: const <Widget>[
                ListTile(
                  leading: Icon(Icons.tv),
                  title: Text('Abonnement Netflix'),
                  subtitle: Text('29 décembre 2023'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('-12000.00'),
                      SizedBox(width: 5),
                      Text('FCFA'),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text('Abonnement Spotify'),
                  subtitle: Text('28 décembre 2023'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('-9000.00'),
                      SizedBox(width: 5),
                      Text('FCFA'),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.phone_iphone),
                  title: Text('Achat sur l\'App Store (Apple)'),
                  subtitle: Text('27 décembre 2023'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('-25000.00'),
                      SizedBox(width: 5),
                      Text('FCFA'),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.tv),
                  title: Text('Abonnement Canal+'),
                  subtitle: Text('26 décembre 2023'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('35000.00'),
                      SizedBox(width: 5),
                      Text('FCFA'),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.restaurant_menu),
                  title: Text('Dîner au restaurant "La Terrasse"'),
                  subtitle: Text('25 décembre 2023'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('-18000.00'),
                      SizedBox(width: 5),
                      Text('FCFA'),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.shopping_basket),
                  title: Text('Courses au supermarché "Dakar Market"'),
                  subtitle: Text('24 décembre 2023'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('28000.00'),
                      SizedBox(width: 5),
                      Text('FCFA'),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.local_movies),
                  title: Text('Billet de cinéma'),
                  subtitle: Text('23 décembre 2023'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('-8000.00'),
                      SizedBox(width: 5),
                      Text('FCFA'),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.directions_car),
                  title: Text('Taxi pour l\'aéroport'),
                  subtitle: Text('22 décembre 2023'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('-15000.00'),
                      SizedBox(width: 5),
                      Text('FCFA'),
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.school),
                  title: Text('Cours de langues'),
                  subtitle: Text('21 décembre 2023'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('20000.00'),
                      SizedBox(width: 5),
                      Text('FCFA'),
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
