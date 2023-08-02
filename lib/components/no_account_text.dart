import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';


class NoAccountText extends StatelessWidget {
  const NoAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Dont Have an account?",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),

          ),
        ),
        GestureDetector(
          onTap: (){},
          child: Text("SignUp",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
        )
      ],
    );
  }
}