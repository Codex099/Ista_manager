import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart';

class stg extends StatelessWidget {
  const stg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff393E46),
        title: Text(
          "Stages",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 76, 166, 240),
          ),
        ),
        centerTitle: true,
        leading: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => mainpage()),
            );
          },
          child: Image.asset("img/revenir.png"),
        ),
      ),
    );
  }
}
