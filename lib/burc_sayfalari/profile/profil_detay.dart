import 'package:flutter/material.dart';
import 'package:flutter_burclar/burc_sayfalari/profile/profile_body.dart';
import 'package:flutter_burclar/burc_sayfalari/profile/widgets.dart';
import 'package:flutter_burclar/login_page/components/date_picker.dart';
import 'package:flutter_burclar/login_page/components/rounded_input_field.dart';
import 'package:flutter_burclar/login_page/components/text_field_container.dart';
import 'package:flutter_burclar/login_page/contstants.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:intl/intl.dart';

import '../../login_page/screens/welcome/welcome_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double widht = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                kPrimaryColor!,
                kPrimaryLightColor!,
                Color.fromARGB(255, 138, 40, 177)
              ],
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter)),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 34),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: Icon(
                          Icons.arrow_left_sharp,
                          color: kPrimaryLightColor,
                          size: 45,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => WelcomeScreen(),
                              ));
                            },
                            icon: Icon(
                              Icons.logout_sharp,
                              color: kPrimaryLightColor,
                            )),
                      ),
                    ],
                  ),
                  Text(
                    'Profilim',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kPrimaryLightColor,
                        fontSize: 30,
                        fontFamily: 'NiseBuschGardens'),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: height * 1.5,
                    color: kPrimaryColor,
                    child: LayoutBuilder(builder:
                        (BuildContext context, BoxConstraints constraints) {
                      double innerHeight = constraints.maxHeight;
                      double innerWidht = constraints.maxWidth;
                      return Body(
                          innerWidht: innerWidht,
                          innerHeight: innerHeight,
                          dateinput: dateinput);
                    }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
