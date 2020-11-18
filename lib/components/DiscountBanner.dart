import 'package:flutter/material.dart';
import 'package:layouting_flutter/size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenHeight(14),
          vertical: getProportionateScreenWidth(19)),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color(0xFF4A3298),
          borderRadius: BorderRadius.circular(15)),
      child: Text.rich(TextSpan(
          text: "A Winter Suprise\n",
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text: "Cashback 35%",
              style: TextStyle(fontSize: 24,
              fontWeight: FontWeight.bold)
            )
          ])),
    );
  }
}