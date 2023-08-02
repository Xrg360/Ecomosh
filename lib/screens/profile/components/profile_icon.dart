import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.expand,

        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/icons/User Icons.svg"),

          ),
          Positioned(
            bottom: 0,
            right:-12,
            child: SizedBox(
              height: 46,
              width: 46,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFF5F6F9),
                    padding: EdgeInsets.zero,
                    side: BorderSide(color: Colors.white)
                ),
                onPressed: (){},
                child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
