import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoeapp/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> userCart= [];
  List<Shoe> getShoeList(){
    return shoeShop;
  }
  List<Shoe> getUserCart(){
    return userCart;
  }
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}