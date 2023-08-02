import 'package:ecomapp/components/default_button.dart';
import 'package:ecomapp/models/Product.dart';
import 'package:ecomapp/screens/details/components/product_description.dart';
import 'package:ecomapp/screens/details/components/product_images.dart';
import 'package:ecomapp/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../components/top_rounded_container.dart';
import 'color_dots.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.product});
  final Product product;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  press: (){},
                ),
                TopRoundedContainer(color: Color(0xFF6F7F9),
                    child: Column(
                      children: [
                        ColorDots(product: product),
                        TopRoundedContainer(color: Colors.white, child: Padding(
                          padding:  EdgeInsets.only(
                              left: SizeConfig.screenWidth*0.15,
                              right: SizeConfig.screenWidth*0.15,
                            bottom: getProportionateScreenWidth(40),
                            
                          ),
                          child: DefaultButton(
                            text: "Add to Cart",press: (){},
                          ),
                        ))
                      ],
                    ))
              ],
            ),

          ),
        ],
      ),
    );
  }
}
