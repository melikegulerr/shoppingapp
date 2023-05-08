import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // satistaki urunleri listeliyoruz
  final List _shopItems = [
    ["Avocado", "5.50", "lib/images/avocado.png", Colors.green],
    ["Banana", "7.00", "lib/images/bananas.png", Colors.yellow],
    ["Chicken", "18.50", "lib/images/chicken-leg.png", Colors.brown],
    ["Water", "3.00", "lib/images/water.png", Colors.blue],
  ];

  // carttaki urunler
  List _cartItems = [];

  get shopItems => _shopItems;
  get cartItems => _cartItems;

  //carta oge ekleme
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // carttan oge silme
  void removeItemToCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // toplam ucret hesaplama
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
