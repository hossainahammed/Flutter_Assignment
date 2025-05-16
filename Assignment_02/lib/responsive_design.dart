import 'package:flutter/material.dart';

import 'Flag_Card.dart';

class flag_app extends StatefulWidget {
  const flag_app({super.key});

  @override
  State<flag_app> createState() => _flag_appState();
}

class _flag_appState extends State<flag_app> {
  final List<Map<String, String>> courses = [
    {'title': 'Bangladesh', 'subtitle': ' Web Dev with React', 'flag': 'asset/BD.png'},
    {'title': 'BD', 'subtitle': ' Cloud Computing', 'flag': 'asset/tv.png'},
    {'title': 'BD', 'subtitle': ' Mobile Dev', 'flag': 'asset/tw.png'},
    {'title': 'BD', 'subtitle': ' Game Dev Basics', 'flag': 'asset/uy.png'},
    {'title': 'BD', 'subtitle': ' Big Data Analytics', 'flag': 'asset/uz.png'},
    {'title': 'BD', 'subtitle': ' Machine Learning', 'flag': 'asset/va.png'},
    {'title': 'BD', 'subtitle': ' Cloud Computing', 'flag': 'asset/vc.png'},
    {'title': 'BD', 'subtitle': ' AI & Robotics', 'flag': 'asset/ve.png'},
    {'title': 'BD', 'subtitle': ' Cybersecurity', 'flag': 'asset/vg.png'},
    {'title': 'BD', 'subtitle': ' Full Stack Bootcamp', 'flag': 'asset/vi.png'},
    {'title': 'BD', 'subtitle': ' Flutter Development', 'flag': 'asset/wf.png'},
    {'title': 'BD', 'subtitle': ' UI/UX Design', 'flag': 'asset/ws.png'},

  ];


  int _getCrossAxisCount(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width < 600) return 2; // Mobile
    if (width < 1024) return 3; // Tablet
    return 4; // Desktop
  }

  @override
  Widget build(BuildContext context) {
    final crossAxisCount = _getCrossAxisCount(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Flag Grid',textAlign: TextAlign.center,),
        backgroundColor: Colors.teal,
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemCount: courses.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            final course = courses[index];
            return Flag_Card(
              title: course['title']!,
              subtitle: course['subtitle']!,
              flagUrl: course['flag']!,
            );
          },
        ),
      ),
    );
  }
}