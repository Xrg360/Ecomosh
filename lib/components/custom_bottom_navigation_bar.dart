import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants.dart';
import '../ennums.dart';
import '../screens/home/home.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/sample_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.menuState,
  });
  final MenuState menuState;

  @override
  Widget build(BuildContext context) {
    final Color inActiveState = kPrimaryColor;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                offset: Offset(0, -15),
                blurRadius: 20,
                color: Color(0xFFDADADA).withOpacity(0.15)),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40))),
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () => Navigator.pushNamed(context, Home.routeName),
                icon: SvgPicture.asset("assets/icons/Shop Icon.svg",
                    color: MenuState.home == menuState
                        ? inActiveState
                        : kSecondaryColor)),
            IconButton(
                onPressed: ()=>Navigator.pushNamed(context, SampleScreen.routeName),
                icon: SvgPicture.asset("assets/icons/Heart Icon.svg",
                    color: MenuState.favorites == menuState
                        ? inActiveState
                        : kSecondaryColor)),
            IconButton(
                onPressed: ()=>Navigator.pushNamed(context, SampleScreen.routeName),
                icon: SvgPicture.asset("assets/icons/Chat bubble Icon.svg",
                    color: MenuState.chat == menuState
                        ? inActiveState
                        : kSecondaryColor)),
            IconButton(
                onPressed: () =>Navigator.pushNamed(context, ProfileScreen.routeName),
                icon: SvgPicture.asset("assets/icons/User Icon.svg",
                    color: MenuState.profile == menuState
                        ? inActiveState
                        : kSecondaryColor)),
          ],
        ),
      ),
    );
  }
}
