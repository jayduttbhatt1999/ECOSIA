// import 'package:ecosia/Tutorial%20Pages/tutorial2.dart';

import 'package:ecosia/screens/home/TutorialPages/tutorial2.dart';
import 'package:flutter/material.dart';

class Tutorial1 extends StatefulWidget {
  const Tutorial1({Key? key}) : super(key: key);

  @override
  State<Tutorial1> createState() => _Tutorial1State();
}

class _Tutorial1State extends State<Tutorial1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Hello! Glad you're here, let's get started"),
      // ),

      body: SingleChildScrollView(
        child: Container(
            margin: const EdgeInsets.only(top: 100),
            child: Column(
              children: [
                Text(
                  "Tips & Tricks to reduce waste",
                  style: TextStyle(
                      color: Colors.green[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                  textAlign: TextAlign.center,
                ),
                Row(
                  children: const [
                    Image(
                      image: AssetImage("assets/images/Picture9.png"),
                      height: 440,
                      width: 380,
                      fit: BoxFit.cover,
                    ),
                    // buildImageCard(),
                  ],
                ),
                const SizedBox(height: 50),
                SizedBox(
                    width: 140.0,
                    height: 50.0,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 22)),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Tutorial2()));
                        },
                        child: const Text("Next"))),
              ],
            )),
      ),
    );
  }
}

Widget buildImageCard() => Card(
        child: Stack(
      children: [
        Ink.image(
          image: const AssetImage("assets/Picture9.png"),
          height: 440,
          width: 380,
          fit: BoxFit.cover,
        )
      ],
    ));
