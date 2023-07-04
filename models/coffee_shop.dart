import 'package:flutter/material.dart';
import 'package:project1/models/coffee.dart';

class CoffeeShop extends ChangeNotifier {
  // coffee for sale list
  final List<Coffee> _shop = [
    //turkish coffee
    Coffee(
        name: "Turkish Coffee",
        price: "\$15.00",
        imagePath: "lib/images/turkish-coffee.png"),
    //latte
    Coffee(
        name: "Latte",
        price: "\$7.00",
        imagePath: "lib/images/coffee-latte.png"),
    //cold brew
    Coffee(
        name: "Cold Brew",
        price: "\$9.50",
        imagePath: "lib/images/cold-brew.png"),
    // ice coffee
    Coffee(
        name: "Iced Coffee",
        price: "\$5.00",
        imagePath: "lib/images/cold-coffee.png"),
    //espresso
    Coffee(
        name: "Espresso",
        price: "\$12.00",
        imagePath: "lib/images/espresso.png"),
    //frappuccino
    Coffee(
        name: "Frappuccino",
        price: "\$10.00",
        imagePath: "lib/images/frappuccino.png"),
  ];
  // user cart
  List<Coffee> _userCart = [];
  // get coffee list
  List<Coffee> get coffeeShop => _shop;
  // get user cart
  List<Coffee> get userCart => _userCart;
  // add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  // remove item from cart
  void removeItemTocart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
