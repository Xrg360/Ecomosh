import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    super.key,
    this.text,
    this.image,
  });
  final String? text,image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text("ECOMOSH",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(36),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(text!, textAlign: TextAlign.center,),
        Spacer(flex: 2,),
        Image.asset(
          image!,
          height: getProportionateScreenWidth(235),
          width: getProportionateScreenHeight(265),

        )
      ],
    );
  }
}
