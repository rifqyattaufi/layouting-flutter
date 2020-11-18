import 'package:flutter/cupertino.dart';
import 'package:layouting_flutter/models/Product.dart';

class Cart {
  final Product product;
  final int numOfItems;

  Cart({@required this.product, @required this.numOfItems});
}

List<Cart> demoCart = [
  Cart(product: demoProducts[1], numOfItems: 1),
  Cart(product: demoProducts[2], numOfItems: 3),
  Cart(product: demoProducts[4], numOfItems: 1),
];
