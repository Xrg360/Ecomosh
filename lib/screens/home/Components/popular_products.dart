import 'package:ecomapp/screens/details/details_screen.dart';
import 'package:ecomapp/screens/home/Components/section_title.dart';
import 'package:flutter/material.dart';

import '../../../components/product_card.dart';
import '../../../components/round_icon_btn.dart';
import '../../../models/Product.dart';
import '../../../size_config.dart';

class PopularProduts extends StatelessWidget {
  const PopularProduts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(text: "Popular Products", press: () {}),
        SizedBox(
          height: getProportionateScreenWidth(30),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ...List.generate(demoProducts.length, (index) {
                if (demoProducts[index].isPopular) {
                  return ProductCard(
                    product: demoProducts[index],
                    press: () => Navigator.pushNamed(
                        context, DetailsScreen.routeName,
                        arguments: ProductDetailsArgument(
                            product: demoProducts[index])),
                  );
                } else
                  return SizedBox.shrink();
              }),
              SizedBox(
                width: getProportionateScreenWidth(20),
              )
            ],
          ),
        ),
      ],
    );
  }
}
