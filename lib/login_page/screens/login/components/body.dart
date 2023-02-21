import 'package:flutter/material.dart';
import 'package:flutter_burclar/login_page/components/already_have_an_account_check.dart';
import 'package:flutter_burclar/login_page/components/rounded_button.dart';
import 'package:flutter_burclar/login_page/components/rounded_input_field.dart';
import 'package:flutter_burclar/login_page/components/rounded_password_field.dart';
import 'package:flutter_burclar/login_page/components/text_field_container.dart';
import 'package:flutter_burclar/login_page/contstants.dart';
import 'package:flutter_burclar/login_page/screens/login/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "GİRİŞ YAP",
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
            "assets/icons/login.svg",
            height: size.height * 0.35,
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          RoundedInputField(
            hintText: 'Emailinizi Giriniz...',
            onChanged: (String value) {},
            filledTrue: false,
            iBorder: InputBorder.none, color: kPrimaryColor, textAlignValue: TextAlign.start, hintTextColor: kPrimaryColor,
          ),
          RoundedPasswordField(
            onChanged: (String value) {},
          ),
          SizedBox(
            height: size.height * 0.025,
          ),
          RoundedButton4(text: "Giriş Yap", onPressed: () {}),
          SizedBox(
            height: size.height * 0.05,
          ),
          AlreadyHaveAnAccountCheck()
        ],
      ),
    );
  }
}
