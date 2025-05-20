import 'package:flutter/material.dart';
import '../models/contact.dart';

class ContactTile extends StatelessWidget {
  final Contact contact;
  final VoidCallback onLongPress;

  const ContactTile({
    Key? key,
    required this.contact,
    required this.onLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(
        contact.name,
        style: TextStyle(
          color: contact.name == "Jawad" || contact.name == "Ferdous"
              ? Colors.red
              : Colors.black,
        ),
      ),
      subtitle: Text(contact.number),
      trailing: Icon(Icons.phone),
      onLongPress: onLongPress,
    );
  }
}
