import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

import '../size_config.dart';
import 'CategoryCard.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": Ionicons.flash_outline, "text": "Flash Sale"},
      {"icon": Ionicons.receipt_outline, "text": "Bill"},
      {"icon": Ionicons.game_controller_outline, "text": "Game"},
      {"icon": Ionicons.gift_outline, "text": "Daily Gift"},
      {"icon": Ionicons.compass_outline, "text": "More"},
    ];

    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenHeight(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
            (index) => InkWell(
              borderRadius: BorderRadius.circular(12),
              onTap: () {},
              child: CategoryCard(
                  icon: categories[index]["icon"],
                  text: categories[index]["text"],
                  press: () {}),
            ),
          ),
        ],
      ),
    );
  }
}