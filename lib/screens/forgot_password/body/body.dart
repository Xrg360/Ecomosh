import 'package:ecomapp/components/form_error.dart';
import 'package:ecomapp/components/no_account_text.dart';
import 'package:ecomapp/size_config.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_suffix.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Please enter your email and we will \n send you and link to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight*0.1,),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({super.key});

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  late String email;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            onChanged: (value) {
              if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                setState(() {
                  errors.remove(kEmailNullError);
                });
              } else if (emailValidatorRegExp.hasMatch(value) &&
                  errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.remove(kInvalidEmailError);
                });
              }
            },
            validator: (value) {
              if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                setState(() {
                  errors.add(kEmailNullError);
                });
              } else if (!emailValidatorRegExp.hasMatch(value) &&
                  !errors.contains(kInvalidEmailError)) {
                setState(() {
                  errors.add(kInvalidEmailError);
                });
              }
              return null;
            },
            keyboardType: TextInputType.emailAddress,
            onSaved: (newValue) => email = newValue!,
            decoration: const InputDecoration(
                hintText: "Enter your email",
                labelText: "Email",
                suffixIcon: CustomSuffixIcon(
                  svgIcon: "assets/icons/Mail.svg",
                )),
          ),
          SizedBox(height: getProportionateScreenHeight(30),),
          FormError(errors: errors),
          SizedBox(height: SizeConfig.screenHeight*0.1,),
          DefaultButton(
            text: "continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                //the main logic of sending the email goes here
              }
            },
          ),
          NoAccountText(),
        ],
      ),
    );
  }
}
