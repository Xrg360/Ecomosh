import 'package:ecomapp/components/custom_bottom_navigation_bar.dart';
import 'package:ecomapp/ennums.dart';
import 'package:ecomapp/screens/home/Components/body.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(menuState: MenuState.home,)
    );
  }
}
