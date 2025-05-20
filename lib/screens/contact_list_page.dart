import 'package:flutter/material.dart';
import '../models/contact.dart';
import '../widgets/contact_tile.dart';

class ContactListPage extends StatefulWidget {
  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final List<Contact> contacts = [];

  void addContact() {
    String name = nameController.text.trim();
    String number = numberController.text.trim();

    if (name.isNotEmpty && number.isNotEmpty) {
      setState(() {
        contacts.add(Contact(name: name, number: number));
        nameController.clear();
        numberController.clear();
      });
    }
  }

  void confirmDelete(int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Confirmation'),
        content: Text('Are you sure for Delete?'),
        actions: [
          IconButton(
            icon: Icon(Icons.cancel),
            onPressed: () => Navigator.of(context).pop(),
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              setState(() {
                contacts.removeAt(index);
              });
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contact List')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            SizedBox(height: 8),
            TextField(
              controller: numberController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(labelText: 'Number'),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: addContact,
              child: Text('Add'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
            ),
            SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) => ContactTile(
                  contact: contacts[index],
                  onLongPress: () => confirmDelete(index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
