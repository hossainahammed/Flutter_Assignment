import 'package:flutter/material.dart';
import 'screens/contact_list_page.dart';

void main() => runApp(ContactApp());

class ContactApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact List',
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: ContactListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
