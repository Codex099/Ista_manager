import 'package:flutter/material.dart';
import 'package:flutter_application_1/spc/ges.dart';
import 'package:flutter_application_1/spc/opt.dart';
import 'package:flutter_application_1/spc/info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEEEEE),
      appBar: AppBar(
        backgroundColor: Color(0xff393E46),
        title: Text(
          "ISTA MANAGER",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255, 76, 166, 240),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 25),
            Text("Spécialité"),
            SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF00ADB5),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Info()),
                        );
                      },
                      child: Image.asset(
                        "img/pirate.png",
                        height: 80,
                        width: 69,
                      ),
                    ),
                    Text("DAM"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff00ADB5),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Gestion()),
                        );
                      },

                      child: Image.asset("img/anz.png", height: 80, width: 69),
                    ),
                    Text("GESTION"),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF00ADB5),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => optique()),
                        );
                      },
                      child: Image.asset(
                        "img/science.png",
                        height: 80,
                        width: 69,
                      ),
                    ),
                    Text("OPTIQUE"),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  
                  children: [
                    SizedBox(
                      width: 300,
                      height: 150,
                      child: Divider(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    Text("information"),
                    SizedBox(height: 40),
                    Text("stage"),
                    SizedBox(height: 40),
                    Text("implois"),
                    SizedBox(height: 40),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
