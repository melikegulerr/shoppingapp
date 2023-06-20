import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = [
    ["Avocado", "4.00", "lib/images/avocado.png", Colors.green],
    ["Banana", "7.00", "lib/images/bananas.png", Colors.yellow],
    ["Chicken", "13.50", "lib/images/chicken.png", Colors.brown],
    ["Milk", "5.00", "lib/images/milk-box.png", Colors.blue],
    ["Pasta", "8.50", "lib/images/pasta.png", Colors.deepOrange],
    ["Snack", "3.00", "lib/images/potato-chips.png", Colors.deepPurple],
    ["Shampoo", "6.50", "lib/images/shampoo.png", Colors.grey],
    ["Cola", "2.00", "lib/images/soft-drink.png", Colors.red],
  ];

  // list of cart items
  List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  // add item to cart
  void addItemCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
