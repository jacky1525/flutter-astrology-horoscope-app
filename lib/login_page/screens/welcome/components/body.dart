import 'package:flutter/material.dart';
import 'package:flutter_burclar/login_page/components/rounded_button.dart';
import 'package:flutter_burclar/login_page/contstants.dart';
import 'package:flutter_burclar/login_page/screens/login/login_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'background.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Burç Uygulamasına Hoşgeldiniz.",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                  fontSize: 20,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            SvgPicture.asset(
              "assets/icons/chat.svg",
              height: size.height * 0.45,
            ),
            SizedBox(
              height: size.height * 0.05,
            ),
            RoundedButton(
              text: "Giriş Yap",
              onPressed: () {},
            ),
            RoundedButton2(
              text: "Kayıt Ol",
              color: kPrimaryLightColor,
              textColor: Colors.black,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
