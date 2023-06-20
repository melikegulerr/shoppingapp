import 'package:flutter/material.dart';
import 'package:project1/pages/home_page.dart';

class introPage extends StatelessWidget {
  const introPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //logo
          Padding(
            padding: const EdgeInsets.only(
              left: 80,
              right: 80,
              bottom: 50,
              top: 70,
            ),
            child: Image.asset("lib/images/shoppingbasket.png"),
          ),
          //You are at the right place for a flavorful shopping experience
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Text(
              "You are at the right place for a flavorful shopping experience",
              textAlign: TextAlign.center,
              style: TextStyle(fontFamily: "BebasNeue", fontSize: 35),
            ),
          ),
          SizedBox(height: 30),

          // "Easy and enjoyable shopping."
          Text(
            "Easy and enjoyable shopping",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Spacer(),
          // get started button
          GestureDetector(
            onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
              builder: (context) {
                return const homePage();
              },
            )),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.all(24),
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
