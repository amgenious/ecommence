import 'package:flutter/material.dart';
import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '236',
        imagePath: 'assets/images/sneakers-1.png',
        description: 'Cool Shoe'),
    Shoe(
        name: 'Air Jordans',
        price: '220',
        imagePath: 'assets/images/sneakers-2.png',
        description: 'Very Relaxible'),
    Shoe(
        name: 'KD Treys',
        price: '280',
        imagePath: 'assets/images/sneakers-3.png',
        description: 'Nice Job'),
    Shoe(
        name: 'Kyrie 6',
        price: '190',
        imagePath: 'assets/images/sneakers-4.png',
        description: 'The best one ever'),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}