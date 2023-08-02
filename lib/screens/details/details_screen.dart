import 'package:ecomapp/models/Product.dart';
import 'package:ecomapp/screens/details/components/body.dart';
import 'package:ecomapp/size_config.dart';
import 'package:flutter/material.dart';

import '../../components/round_icon_btn.dart';
import 'components/custom_app_bar.dart';
class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});
  static String routeName = "/details";
  @override
  Widget build(BuildContext context) {
    final ProductDetailsArgument agrs =
    ModalRoute.of(context)!.settings.arguments as ProductDetailsArgument;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(rating: agrs.product.rating),
      ),
      body: Body(product:agrs.product ,),
    );
  }
}

class ProductDetailsArgument {
  final Product product;

  ProductDetailsArgument({required this.product});
}
