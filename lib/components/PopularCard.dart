import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:layouting_flutter/models/Product.dart';
import '../size_config.dart';

class PopularCard extends StatelessWidget {
  const PopularCard({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;
  
    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
        child: InkWell(
          onTap: () {
            
          },borderRadius: BorderRadius.circular(15),
                  child: SizedBox(
            width: getProportionateScreenWidth(140),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1.02,
                  child: Container(
                    padding: EdgeInsets.all(getProportionateScreenWidth(5)),
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(211, 211, 211, 0.5),
                        borderRadius: BorderRadius.circular(15)),
                    child: Image.asset(product.images[0]),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  product.title,
                  style: TextStyle(color: Colors.black),
                  maxLines: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rp ${product.price}",
                      style: TextStyle(
                          fontSize: getProportionateScreenWidth(14),
                          fontWeight: FontWeight.w600,
                          color: Colors.redAccent),
                    ),
                    InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () {},
                      child: Container(
                        width: getProportionateScreenWidth(28),
                        height: getProportionateScreenHeight(28),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(211, 211, 211, 0.5),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          EvaIcons.heart,
                          size: getProportionateScreenWidth(18),
                          color: product.isFavourite ? Colors.red : Color.fromRGBO(211, 211, 211, 1),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }
  }
