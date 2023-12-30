import 'package:flutter/material.dart';

class TransferPage extends StatefulWidget {
  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  List<Map<String, String>> contacts = [
    {'name': 'Contact 1', 'number': '12345'},
    {'name': 'Contact 2', 'number': '67890'},
    {'name': 'Contact 3', 'number': '24680'},
    {'name': 'Contact 3', 'number': '24680'},
    {'name': 'Contact 3', 'number': '24680'},
    {'name': 'Contact 3', 'number': '24680'},
    {'name': 'Contact 3', 'number': '24680'},
    {'name': 'Contact 3', 'number': '24680'},
    {'name': 'Contact 3', 'number': '24680'},
    {'name': 'Contact 3', 'number': '24680'},
    {'name': 'Contact 3', 'number': '24680'},
    {'name': 'Contact 3', 'number': '24680'},
    {'name': 'Contact 3', 'number': '24680'},
    // Ajoutez d'autres contacts ici
  ];

  List<Map<String, String>> filteredContacts = [];

  @override
  void initState() {
    super.initState();
    filteredContacts = contacts;
  }

  void filterContacts(String query) {
    setState(() {
      filteredContacts = contacts
          .where((contact) =>
              contact['name']!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  Widget _buildContactWidget(String name, String number) {
    return ListTile(
      leading: CircleAvatar(
        // Icône de profil (peut être remplacé par l'icône souhaité)
        child: Icon(Icons.person),
      ),
      title: Text(name),
      subtitle: Text(number),
      onTap: () {
        // Action à effectuer lors du clic sur un contact
        // Par exemple, sélectionner le contact pour le transfert
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfert'),
        backgroundColor:
            Color(0xFF4B42DD), // Utilisation de la couleur principale
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                filterContacts(value);
              },
              decoration: InputDecoration(
                labelText: 'Recherche',
                hintText: 'Entrez le nom du contact',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredContacts.length,
              itemBuilder: (context, index) {
                return _buildContactWidget(
                  filteredContacts[index]['name']!,
                  filteredContacts[index]['number']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
