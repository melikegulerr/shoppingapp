import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project1/pages/const.dart';
import 'package:project1/pages/home_page.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          // image
          Padding(
            padding:
                const EdgeInsets.only(left: 90, right: 90, top: 70, bottom: 10),
            child: Image.asset(
              "lib/images/expresso.png",
            ),
          ),
          SizedBox(height: 10),

          // welcome to the enchanting world of coffee
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Welcome to the enchanting world of coffee",
              style: TextStyle(
                  fontFamily: "oswald",
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.brown[900]),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 10),
          // how do you like your coffee
          Text("How do you like your coffee?",
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: Colors.brown[800])),
          SizedBox(height: 10),

          // button
          Spacer(),
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return HomePage();
              },
            )),
            child: Container(
              width: 220,
              height: 70,
              decoration: BoxDecoration(
                  color: Colors.brown[500],
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Text(
                  "Shop Page",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
