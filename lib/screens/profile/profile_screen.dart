import 'package:ecomapp/constants.dart';
import 'package:ecomapp/ennums.dart';
import 'package:ecomapp/screens/home/home.dart';
import 'package:ecomapp/screens/profile/components/body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../components/custom_bottom_navigation_bar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(
        menuState: MenuState.profile,
      ),
    );
  }
}

