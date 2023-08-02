import 'package:ecomapp/constants.dart';
import 'package:ecomapp/models/Product.dart';
import 'package:ecomapp/screens/home/Components/categories.dart';
import 'package:ecomapp/screens/home/Components/popular_products.dart';
import 'package:ecomapp/screens/home/Components/section_title.dart';
import 'package:ecomapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../components/product_card.dart';
import '../../../components/special_offers.dart';
import 'home_header.dart';
import 'offer_banner.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20),),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30),),
            OfferBanner(),
            SizedBox(height: getProportionateScreenWidth(30),),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30),),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30),),
            PopularProduts()
          ],
        ),
      ),
    );
  }
}

