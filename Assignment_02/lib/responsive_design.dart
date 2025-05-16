import 'package:flutter/material.dart';

class flag_app extends StatefulWidget {
  const flag_app({super.key});

  @override
  State<flag_app> createState() => _flag_appState();
}

class _flag_appState extends State<flag_app> {

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: screenSize.width*0.5,
              height: screenSize.height*0.5,
            ),
          )
        ],
      ),


    );
  }
}
