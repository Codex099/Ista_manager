import 'package:flutter/material.dart';
import 'package:flutter_application_1/spc/ges.dart';
import 'package:flutter_application_1/spc/opt.dart';
import 'package:flutter_application_1/spc/info.dart';
import 'package:flutter_application_1/row2/act.dart';
import 'package:flutter_application_1/row2/stg.dart';
import 'package:flutter_application_1/row2/edt.dart';

// update version
class mainpage extends StatelessWidget {
  const mainpage({super.key});

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
        // leading: Padding(
        //   padding: const EdgeInsets.all(10),
        //   child: Image.asset("img/revenir.png"),
        // ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset("img/parametres.png"),
          ),
        ],
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
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 150,
                        child: Divider(
                          color: Color.fromARGB(255, 0, 0, 0),
                          endIndent: 60,
                          indent: 60,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => edt()),
                          );
                        },
                        child: Text("EDT"),
                      ),
                      // SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => act()),
                          );
                        },
                        child: Text("Actualités"),
                      ),
                      // SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => stg()),
                          );
                        },
                        child: Text("Stages"),
                      ),
                      // SizedBox(height: 40),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
