import 'package:flutter/material.dart';

import '../size_config.dart';
import 'SectionTitle.dart';
import 'SpecialOfferCard.dart';

class SpecialOffer extends StatelessWidget {
  const SpecialOffer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Spesial for you",
          press: () {},
        ),
        SizedBox(
          height: getProportionateScreenHeight(15),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                categoryName: "Console",
                image: "assets/images/Banner 1.png",
                numOfBrand: 2,
                press: () {},
              ),
              SpecialOfferCard(
                categoryName: "Personal Computer",
                image: "assets/images/Banner 2.png",
                numOfBrand: 45,
                press: () {},
              ),
              SpecialOfferCard(
                categoryName: "Smartphone",
                image: "assets/images/Banner 3.png",
                numOfBrand: 18,
                press: () {},
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}