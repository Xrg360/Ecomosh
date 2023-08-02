import 'package:ecomapp/screens/cart/cart_screen.dart';
import 'package:ecomapp/screens/home/Components/search_bar.dart';
import 'package:ecomapp/screens/notification/cart_screen.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(28)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),

          NotificationIcon(svgSrc: "assets/icons/Cart Icon.svg", numOfItems: 3,
              press: ()=>Navigator.pushNamed(context, CartScreen.routeName)
              ,),
          NotificationIcon(svgSrc: "assets/icons/Bell.svg", numOfItems: 1,
            press: ()=>Navigator.pushNamed(context, NotificationScreen.routeName)
          )
        ],
      ),
    );
  }
}
