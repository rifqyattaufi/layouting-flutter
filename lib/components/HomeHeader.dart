import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:layouting_flutter/components/Cart/CArtScreen.dart';
import 'package:layouting_flutter/size_config.dart';
import 'package:layouting_flutter/components/IconBtnWithCounter.dart';
import 'package:layouting_flutter/components/SearchBar.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchBar(),
          IconBtnWithCounter(
              num0fItems: 0,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(),
                  ),
                );
              },
              icon: EvaIcons.shoppingCartOutline),
          IconBtnWithCounter(
            num0fItems: 5,
            press: () {},
            icon: Icons.notifications_none,
          )
        ],
      ),
    );
  }
}
