import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:layouting_flutter/components/Cart/components/body.dart';
import 'package:layouting_flutter/models/Cart.dart';
import 'package:layouting_flutter/size_config.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
          icon: Icon(
            Ionicons.chevron_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context)),
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Text(
            "${demoCart.length} items",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(12),
            ),
          )
        ],
      ),
    );
  }
}

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(15),
          horizontal: getProportionateScreenHeight(30)),
      // height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15)),
        ],
      ),
      child: SafeArea(
              child: Column(
                mainAxisSize: MainAxisSize.min ,
          children: [
            Row(
              children: [
                Container(
                  height: getProportionateScreenHeight(40),
                  width: getProportionateScreenWidth(40),
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(
                    Ionicons.receipt_outline,
                    color: Colors.orangeAccent,
                  ),
                ),
                Spacer(),
                Text(
                  "Add Voucher Code",
                  style: TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Ionicons.chevron_forward,
                  size: 12,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    text: "Total: \n",
                    children: [
                      TextSpan(
                          text: "Rp 33.579.000",
                          style: TextStyle(fontSize: 19, color: Colors.black))
                    ],
                  ),
                ),
                SizedBox(
                  width: getProportionateScreenWidth(160),
                  height: getProportionateScreenHeight(56),
                  child: FlatButton(
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Color(0xFFFF7643),
                      child: Text(
                        "Checkout",
                        style: TextStyle(
                            fontSize: getProportionateScreenWidth(18),
                            color: Colors.white),
                      )),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
