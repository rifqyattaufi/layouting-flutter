import 'package:flutter/material.dart';
import 'package:layouting_flutter/size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({Key key, this.num0fItems = 0, @required this.press, @required this.icon})
      : super(key: key);

  final IconData icon;
  final int num0fItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(12)),
              height: getProportionateScreenHeight(46),
              width: getProportionateScreenWidth(46),
              decoration: BoxDecoration(
                color: Color.fromRGBO(211, 211, 211, 0.5),
                shape: BoxShape.circle,
              ),
              child: Icon(icon)),
              if(num0fItems != 0)
          Positioned(
            top: -1,
            right: 0,
            child: Container(
              height: getProportionateScreenHeight(16),
              width: getProportionateScreenWidth(16),
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  "$num0fItems",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(11),
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}