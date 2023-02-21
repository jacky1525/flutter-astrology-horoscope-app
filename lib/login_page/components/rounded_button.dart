import 'package:flutter/material.dart';
import 'package:flutter_burclar/burc_sayfalari/burc_listesi.dart';
import 'package:flutter_burclar/login_page/contstants.dart';
import 'package:flutter_burclar/login_page/screens/Signup/signup_screen.dart';
import 'package:flutter_burclar/login_page/screens/login/login_screen.dart';

import 'package:flutter_burclar/login_page/screens/welcome/welcome_screen.dart';

//login button

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color? color, textColor;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
              backgroundColor: MaterialStateProperty.all(color),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ));
            },
            child: Text(
              text,
              style: TextStyle(color: textColor),
            )),
      ),
    );
  }
}

//signup button

class RoundedButton2 extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color? color, textColor;
  const RoundedButton2({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
              backgroundColor: MaterialStateProperty.all(color),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => SignUpScreen(),
              ));
            },
            child: Text(
              text,
              style: TextStyle(color: textColor),
            )),
      ),
    );
  }
}

//succesful signup button

class RoundedButton3 extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color? color, textColor;
  const RoundedButton3({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
              backgroundColor: MaterialStateProperty.all(color),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ));
            },
            child: Text(
              text,
              style: TextStyle(color: textColor),
            )),
      ),
    );
  }
}

//succesful login button

class RoundedButton4 extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color? color, textColor;
  const RoundedButton4({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all(
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 40)),
              backgroundColor: MaterialStateProperty.all(color),
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => BurcListesi(),
              ));
            },
            child: Text(
              text,
              style: TextStyle(color: textColor),
            )),
      ),
    );
  }
}
