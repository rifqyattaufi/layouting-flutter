import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:layouting_flutter/components/Cart/components/CartItemCard.dart';
import 'package:layouting_flutter/models/Cart.dart';
import 'package:layouting_flutter/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
      child: ListView.builder(
        itemCount: demoCart.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
              direction: DismissDirection.endToStart,
              key: Key(demoCart[index].product.id.toString()),
              background: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: Color(0xFFFFE6E6),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Spacer(),
                    Icon(
                      Ionicons.trash_outline,
                      color: Colors.red,
                    )
                  ],
                ),
              ),
              // onDismissed: (direction) {
              //   setState(() {
              //     demoCart.removeAt(index);
              //   });
              // },
              child: CartItemCard(
                cart: demoCart[index],
              )),
        ),
      ),
    );
  }
}
