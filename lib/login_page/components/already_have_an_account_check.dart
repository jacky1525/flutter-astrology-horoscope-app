import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_burclar/login_page/contstants.dart';
import 'package:flutter_burclar/login_page/screens/Signup/signup_screen.dart';
import 'package:flutter_burclar/login_page/screens/login/login_screen.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;

  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Hesabınız yok mu? " : "Hesabınız var mı?",
          style: TextStyle(color: kPrimaryColor),
        ),
        GestureDetector(
          onTap: () {
            login
                ? Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ))
                : Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
          },
          child: Text(
            login ? "Kayıt olun" : " Giriş Yapın",
            style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
