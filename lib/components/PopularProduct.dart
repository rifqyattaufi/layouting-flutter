import 'package:flutter/material.dart';
import 'package:layouting_flutter/models/Product.dart';
import '../size_config.dart';
import 'PopularCard.dart';
import 'SectionTitle.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Popular Product", press: () {}),
        SizedBox(
          height: getProportionateScreenHeight(15),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) => PopularCard(
                  product: demoProducts[index],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}