import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/round_icon_btn.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';


class ColorDots extends StatelessWidget {
  const ColorDots({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedCol =3;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(product.colors.length, (index) => ColorDot(color: product.colors[index],isSelected: selectedCol ==index,)),
          Spacer(),
          RoundIconBtn(iconData: CupertinoIcons.minus, press: (){}),
          SizedBox(width: getProportionateScreenWidth(15),),
          RoundIconBtn(iconData: CupertinoIcons.plus, press: (){}),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    super.key,
    required this.color,  this.isSelected = false,
  });

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all(8),
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      decoration: BoxDecoration(
        // color: product.colors[0],
        shape:BoxShape.circle,
        border:Border.all(color: isSelected?kPrimaryColor:Colors.transparent),

      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color:color,
            shape: BoxShape.circle
        ),
      ),
    );
  }
}


