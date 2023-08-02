import 'package:ecomapp/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecomapp/screens/login_success/login_success.dart';
import 'package:flutter/material.dart';

import '../../../components/custom_suffix.dart';
import '../../../components/default_button.dart';
import '../../../components/form_error.dart';
import '../../../constants.dart';
import '../../../size_config.dart';


class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  late bool remember =false;
  final List<String> errors = [];
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(20),),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(20),),
            Row(
              children: [
                Checkbox(value: remember,
                    activeColor: kPrimaryColor,
                    onChanged: (value){
                      setState(() {
                        remember = value!;
                      });
                    }

                ),
                const Text("Remember Me"),
                const Spacer(),
                GestureDetector(
                  onTap: ()=> Navigator.popAndPushNamed(context, ForgotPassword.routeName),
                    child: Text("Forgot Password", 
                    style: TextStyle(decoration: TextDecoration.underline),))
              ],
            ),
            FormError(errors: errors), // this code the problematic code
            SizedBox(height: getProportionateScreenHeight(20),),

            DefaultButton(
              text: "continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                }
              },
            )
          ],
        ));
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value){
        if (value.isNotEmpty && errors.contains(kPassNullError)) {
          setState(() {
            errors.remove(kPassNullError);
          });

        } else if (value.length >= 8 &&
            errors.contains(kShortPassError)) {
          setState(() {
            errors.remove(kInvalidEmailError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(kPassNullError)) {
          setState(() {
            errors.add(kPassNullError);
          });
          return "";
        } else if (value.length <8 &&
            !errors.contains(kShortPassError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
        }
        return null;
      },
      decoration: const InputDecoration(
          hintText: "Enter your password",
          labelText: "Password",
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/Lock.svg",
          )),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
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
          return "";

        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(kInvalidEmailError)) {
          setState(() {
            errors.add(kInvalidEmailError);
          });
          return "";
        }
        return null;
      },
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      decoration: const InputDecoration(
          hintText: "Enter your email",
          labelText: "Email",
          suffixIcon: CustomSuffixIcon(
            svgIcon: "assets/icons/User.svg",
          )),
    );
  }
}
