import 'package:flutter/material.dart';

import 'home_page.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(
              right: 120, left: 120, top: 100, bottom: 10),
          child: Image.asset("lib/images/avocado.png"),
        ),
        Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            "We deliver groceries at your doorstep",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 30,
                fontFamily: "Bebas Neue",
                fontWeight: FontWeight.bold),
          ),
        ),
        Text(
          "Fresh items everyday",
          style: TextStyle(fontSize: 20),
        ),
        Spacer(),
        GestureDetector(
          onTap: () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) {
            return HomePage();
          })),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(12),
            ),
            padding: EdgeInsets.all(30),
            child: Text(
              "Get Started",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        Spacer(),
      ]),
    );
  }
}
