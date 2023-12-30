import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';

class TransferPage extends StatefulWidget {
  @override
  _TransferPageState createState() => _TransferPageState();
}

class _TransferPageState extends State<TransferPage> {
  late ScrollController _scrollController;
  List<Contact> _contacts = [];
  List<Contact> _filteredContacts = [];
  bool _isLoadingContacts = false;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _loadContacts();
    _scrollController.addListener(_scrollListener);
  }

  Future<void> _loadContacts() async {
    if (!_isLoadingContacts) {
      setState(() => _isLoadingContacts = true);
      Iterable<Contact> newContacts = await ContactsService.getContacts(
        withThumbnails: false,
      );
      setState(() {
        _contacts.addAll(newContacts);
        _filteredContacts = _contacts;
        _isLoadingContacts = false;
      });
    }
  }

  void _scrollListener() {
    if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
      _loadContacts();
    }
  }

  void filterContacts(String query) {
    setState(() {
      _filteredContacts = _contacts
          .where((contact) =>
              contact.displayName?.toLowerCase().contains(query.toLowerCase()) ?? false)
          .toList();
    });
  }

  Widget _buildContactWidget(Contact contact) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: Text(contact.displayName ?? 'No Name'),
      subtitle: Text(
        contact.phones!.isNotEmpty ? contact.phones?.first.value ?? 'No phone number' : 'No phone number',
      ),
      onTap: () {
        // Action lors du clic sur le contact (sélection, transfert, etc.)
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfert'),
        backgroundColor: Color(0xFF4B42DD),
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
              controller: _scrollController,
              itemCount: _filteredContacts.length + 1,
              itemBuilder: (context, index) {
                if (index == _filteredContacts.length) {
                  return _isLoadingContacts
                      ? Center(child: CircularProgressIndicator())
                      : SizedBox.shrink();
                }
                return _buildContactWidget(_filteredContacts[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
