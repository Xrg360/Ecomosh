import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../size_config.dart';
import 'notification_card.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [
              CartCard(),
              SizedBox(height: getProportionateScreenWidth(15),),
              CartCard(),
              SizedBox(height: getProportionateScreenWidth(15),),
              CartCard(),

            ],
          ),
        ),
      ),
    );
  }
}
