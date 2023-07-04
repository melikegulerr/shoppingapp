import 'package:flutter/material.dart';
import 'package:project1/components/coffee_tile.dart';
import 'package:project1/models/coffee.dart';
import 'package:project1/models/coffee_shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add coffee to cart
  void addToCart(Coffee coffee) {
    Provider.of<CoffeeShop>(context, listen: false).addItemToCart(coffee);

    // successfully added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Colors.brown,
        title: Center(
          child: Text(
            "Successfully added to cart",
            style: TextStyle(fontFamily: "oswald", color: Colors.white),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(
      builder: (context, value, child) => Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text(
              "How would you like your coffee?",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "oswald",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 4),
          Expanded(
              child: ListView.builder(
            itemCount: value.coffeeShop.length,
            itemBuilder: (context, index) {
              // get individual
              Coffee eachcoffee = value.coffeeShop[index];
              // return the tile for this coffee
              return CoffeeTile(
                coffee: eachcoffee,
                icon: Icon(Icons.add),
                onPressed: () => addToCart(eachcoffee),
              );
            },
          ))
        ],
      ),
    );
  }
}
