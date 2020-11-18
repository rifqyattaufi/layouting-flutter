import 'package:flutter/material.dart';
import 'package:layouting_flutter/components/Categories.dart';
import 'package:layouting_flutter/components/DiscountBanner.dart';
import 'package:layouting_flutter/models/Product.dart';
import 'package:layouting_flutter/size_config.dart';
import 'components/HomeHeader.dart';
import 'components/PopularCard.dart';
import 'components/PopularProduct.dart';
import 'components/SectionTitle.dart';
import 'components/SpecialOffer.dart';

class TextScalePage extends StatefulWidget {
  @override
  _TextScalePageState createState() => _TextScalePageState();
}

class _TextScalePageState extends State<TextScalePage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              HomeHeader(),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              DiscountBanner(),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Categories(),
              SizedBox(
                height: getProportionateScreenHeight(15),
              ),
              SpecialOffer(),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              PopularProduct()
            ],
          ),
        ),
      ),
    );
  }
}
