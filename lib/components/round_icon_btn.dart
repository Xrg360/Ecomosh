import 'package:flutter/material.dart';
import '../size_config.dart';


class RoundIconBtn extends StatelessWidget {
  const RoundIconBtn({
    super.key, required this.iconData, required this.press,
  });
  final IconData iconData;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenWidth(40),
      width: getProportionateScreenWidth(40),
      child: TextButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            backgroundColor: Colors.white
        ),
        onPressed: press,
        child: Icon(iconData),
      ),
    );
  }
}


