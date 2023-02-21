import 'package:flutter/material.dart';
import 'package:flutter_burclar/burc_sayfalari/profile/widgets.dart';
import 'package:flutter_burclar/login_page/contstants.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.innerWidht,
    required this.innerHeight,
    required this.dateinput,
  }) : super(key: key);

  final double innerWidht;
  final double innerHeight;
  final TextEditingController dateinput;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          bottom: 520,
          left: 0,
          right: 0,
          child: Container(
            width: innerWidht,
            height: innerHeight * 0.45,
            decoration: BoxDecoration(
                color: kPrimaryLightColor,
                borderRadius: BorderRadius.circular(30)),
            child: WidgetsProfilePage(dateinput: dateinput),
          ),
        ),
        Positioned(
          bottom: 930,
          left: 0,
          right: 0,
          top: 0,
          child: Container(
            alignment: Alignment.center,
            child: ProfilePicture(
              tooltip: true,
              name: 'Aybüke Sel',
              radius: 50,
              fontsize: 21,
              img: 'https://i.hizliresim.com/ax619xm.jpg',
            ),
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Positioned(
            bottom: 40,
            top: 520,
            left: 0,
            right: 0,
            child: Container(
              width: innerWidht,
              height: innerHeight * 0.1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: kPrimaryLightColor,
              ),
            ))
      ],
    );
  }
}
