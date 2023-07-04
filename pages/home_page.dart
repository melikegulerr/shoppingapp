import 'package:flutter/material.dart';
import 'package:project1/components/bottom_nav_bar.dart';
import 'package:project1/pages/const.dart';
import 'package:project1/pages/shop_page.dart';

import 'about_page.dart';
import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // navigateBottomBar
  int _selectedIndex = 0;
  void navigateBottomBar(int newIndex) {
    setState(() {
      _selectedIndex = newIndex;
    });
  }

  // pages
  final List<Widget> _pages = [
    // shop page
    ShopPage(),
    // cart page
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Colors.brown[500],
        elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.brown[200],
          child: ListView(children: [
            DrawerHeader(
                child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image.asset("lib/images/expresso.png"),
            )),
            ListTile(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return HomePage();
                },
              )),
              leading: Icon(Icons.home),
              title: Text(
                "Home",
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListTile(
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return aboutPage();
                },
              )),
              leading: Icon(Icons.question_mark),
              title: Text("About"),
            )
          ]),
        ),
      ),
    );
  }
}
