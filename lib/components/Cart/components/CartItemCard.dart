import 'package:flutter/material.dart';
import 'package:layouting_flutter/models/Cart.dart';
import 'package:layouting_flutter/size_config.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key key,
    @required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(88),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(6),
              decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: getProportionateScreenWidth(20),
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                cart.product.title,
                style: TextStyle(fontSize: 15, color: Colors.black),
                maxLines: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              Text.rich(
                TextSpan(
                    text: "Rp ${cart.product.price}",
                    style: TextStyle(color: Colors.redAccent),
                    children: [
                      TextSpan(
                          text: " x${cart.numOfItems}",
                          style: TextStyle(color: Colors.grey))
                    ]),
              ),
            ],
          ),
        )
      ],
    );
  }
}
