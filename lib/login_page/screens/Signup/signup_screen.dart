import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_burclar/login_page/contstants.dart';
import 'package:flutter_burclar/login_page/screens/Signup/components/signup_body.dart';
import 'package:flutter_burclar/login_page/screens/welcome/welcome_screen.dart';

class SignUpScreen extends StatefulWidget {
  final String? title;
  const SignUpScreen({super.key, this.title});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: SignUpBody(
            child: Column(),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        floatingActionButton: FloatingActionBubble(
          items: [
            Bubble(
              title: 'Geri Gel',
              titleStyle: TextStyle(
                  fontWeight: FontWeight.bold, color: kPrimaryColor),
              icon: Icons.arrow_back_ios_new,
              iconColor: (kPrimaryColor)!,
              bubbleColor: (kPrimaryLightColor)!,
              onPress: () {
                Navigator.of(context).pop();
                _animationController.reverse();
              },
            ),
            Bubble(
                icon: Icons.home,
                iconColor: (kPrimaryColor)!,
                bubbleColor: (kPrimaryLightColor)!,
                onPress: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => WelcomeScreen(),
                  ));
                  _animationController.reverse();
                },
                title: "Anasayfa",
                titleStyle: TextStyle(
                    fontWeight: FontWeight.bold, color: kPrimaryColor)),
          ],
          animation: _animation,
          onPress: (() {
            _animationController.isCompleted
                ? _animationController.reverse()
                : _animationController.forward();
          }),
          iconData: Icons.menu,
          backGroundColor: (kPrimaryLightColor)!,
          iconColor: (kPrimaryColor)!,
        ));
  }
}
