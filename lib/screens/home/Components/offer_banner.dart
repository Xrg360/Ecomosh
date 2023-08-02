import 'package:flutter/material.dart';

import '../../../size_config.dart';

class OfferBanner extends StatelessWidget {
  const OfferBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20),vertical: getProportionateScreenWidth(15)),
      decoration: BoxDecoration(
          color: Color(0xFF4A3298),
          borderRadius: BorderRadius.circular(20)
      ),
      child: Text.rich(TextSpan(
          text: "A Simple Surprise\n",
          style: TextStyle(
            color: Colors.white,
          ),
          children: [
            TextSpan(
                text: "CASHBACK 20%",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)
            )
          ]
      )),
    );
  }
}
