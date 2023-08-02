import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';


class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    super.key, required this.icon, required this.text, required this.press,
  });
  final String icon;
  final GestureTapCallback press;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Color(0xFFF5F6F9),
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          ),
          onPressed: press, child: Row(
        children: [
          SvgPicture.asset(icon,
            width: 22,
            color: kPrimaryColor,
          ),
          SizedBox(width: 20,),
          Expanded(child: Text(
              text,
              style: Theme.of(context).textTheme.bodyText1),
          ),
          Icon(Icons.arrow_forward_ios)
        ],
      )),
    );
  }
}

