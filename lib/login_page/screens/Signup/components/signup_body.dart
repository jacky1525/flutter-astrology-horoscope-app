import 'package:flutter/material.dart';
import 'package:flutter_burclar/login_page/components/already_have_an_account_check.dart';
import 'package:flutter_burclar/login_page/components/rounded_button.dart';
import 'package:flutter_burclar/login_page/components/rounded_input_field.dart';
import 'package:flutter_burclar/login_page/components/rounded_password_field.dart';
import 'package:flutter_burclar/login_page/contstants.dart';
import 'package:flutter_burclar/login_page/screens/Signup/components/signup_background.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpBody extends StatelessWidget {
  final Widget child;
  const SignUpBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "KAYIT OL",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
                fontSize: 20,
                fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.35,
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          RoundedInputField(
            hintText: "Emailinizi Giriniz",
            onChanged: ((value) {}),
            filledTrue: false,
            iBorder: InputBorder.none, textAlignValue: TextAlign.start, color: kPrimaryColor, hintTextColor: kPrimaryColor,
          ),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          RoundedButton3(text: "Kayıt Ol", onPressed: () {}),
          SizedBox(
            height: size.height * 0.05,
          ),
          AlreadyHaveAnAccountCheck(
            login: false,
          )
        ],
      ),
    );
  }
}
