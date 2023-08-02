import 'package:ecomapp/constants.dart';
import 'package:ecomapp/screens/sign_in/sign_in_screen.dart';
import 'package:ecomapp/screens/splash/components/splash_content.dart';
import 'package:ecomapp/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage  = 0;

  List<Map<String,String>> splashData = [
    {
      "image": "assets/images/splash_1.png",
      "text":"Welcome to Ecomosh,Let's Shop" ,
    },{
      "image": "assets/images/splash_2.png",
      "text":"We have Exotic collection \n from all over the world" ,
    },{
      "image": "assets/images/splash_3.png",
      "text":"Just press a button \nand\n enjoy the amazing world of products",
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
            children: [
              Expanded(flex:3,
                  child: PageView.builder(
                    onPageChanged: (value){
                          setState(() {
                            currentPage =value;
                          });
                    },
                    itemCount: splashData.length,
                    itemBuilder: (context,index) => SplashContent(
                    image: splashData[index]["image"],
                    text:splashData[index]["text"] ,
                  ),
                 )

              ),
              Expanded(flex:2,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20) ),
                    child: Column(
                      children: [
                        Spacer(),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: List.generate(splashData.length, (index) => buildDot(index: index)),
                        ),
                        Spacer(flex: 4,),
                        DefaultButton(text: "Continue", press: () {
                          Navigator.pushNamed(context, SignInScreen.routeName);
                        },),
                        Spacer()
                      ],

                    ),
                  )),

            ],

        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
              duration: kAnimationDuration,
              margin: EdgeInsets.only(right: 5),
              height: 6,
              width: currentPage==index?20:6,
              decoration: BoxDecoration(
                color: currentPage==index?kPrimaryColor:Color(0xFFD8D8D8),
                borderRadius: BorderRadius.circular(3)
              ),
            );
  }
}





























