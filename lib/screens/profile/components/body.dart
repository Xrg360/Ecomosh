import 'package:ecomapp/constants.dart';
import 'package:ecomapp/screens/notification/cart_screen.dart';
import 'package:ecomapp/screens/profile/components/profile_icon.dart';
import 'package:ecomapp/screens/profile/components/profile_menu.dart';
import 'package:ecomapp/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileIcon(),
        SizedBox(
          height: 20,
        ),
        ProfileMenu(icon: "assets/icons/User Icon.svg" , text: "My Account" ,press: (){},),
        ProfileMenu(icon: "assets/icons/Bell.svg" , text: "Notifications" ,press: ()=>Navigator.pushNamed(context, NotificationScreen.routeName),),
        ProfileMenu(icon: "assets/icons/Settings.svg" , text: "Settings" ,press: (){},),
        ProfileMenu(icon: "assets/icons/Question mark.svg" , text: "Help Centre" ,press: (){},),
        ProfileMenu(icon: "assets/icons/Log out.svg" , text: "Log Out" ,press: ()=>Navigator.pushNamed(context, SplashScreen.routeName),),

      ],
    );
  }
}
