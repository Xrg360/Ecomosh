import 'package:ecomapp/screens/splash/splash_screen.dart';
import 'package:ecomapp/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../home/home.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
         children: [
           SizedBox(height:SizeConfig.screenHeight*0.06,),
           Image.asset("assets/images/success.png",

           ),
           SizedBox(height:SizeConfig.screenHeight*0.08,),
           Text("Login Success",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: getProportionateScreenWidth(30),
              color: Colors.black
            ),
           ),
           Spacer(),
           SizedBox(
             width: SizeConfig.screenWidth*0.6,
             child: DefaultButton(
               text: "Back To Home",
               press: () {
                  Navigator.pushNamed(context, Home.routeName);
               },
             ),
           ),
           Spacer()
         ],
        ),
      ),
    );
  }
}
