import 'package:flutter/material.dart';
import 'package:flutter_burclar/login_page/components/date_picker.dart';
import 'package:flutter_burclar/login_page/contstants.dart';

import '../../login_page/components/rounded_input_field.dart';

class WidgetsProfilePage extends StatelessWidget {
  const WidgetsProfilePage({
    Key? key,
    required this.dateinput,
  }) : super(key: key);

  final TextEditingController dateinput;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 60,
        ),
        Text(
          textAlign: TextAlign.center,
          'Ad',
          style: TextStyle(fontFamily: 'NiseBuschGardens', fontSize: 24),
        ),
        RoundedInputField(
          hintText: 'Adınızı Giriniz',
          onChanged: (value) {},
          filledTrue: true,
          iBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          textAlignValue: TextAlign.center, color: kPrimaryLightColor, hintTextColor: kPrimaryLightColor,
        ),
        Text(
          textAlign: TextAlign.center,
          'Burcunuz',
          style: TextStyle(fontFamily: 'NiseBuschGardens', fontSize: 24),
        ),
        RoundedInputField(
          hintText: 'Burcunuzu Giriniz',
          onChanged: (value) {},
          filledTrue: true,
          iBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
          textAlignValue: TextAlign.center, color: kPrimaryLightColor, hintTextColor: kPrimaryLightColor,
        ),
        Text(
          textAlign: TextAlign.center,
          'Dogum  Tarihiniz',
          style: TextStyle(fontFamily: 'NiseBuschGardens', fontSize: 24),
        ),
        DateTimeField(dateinput: dateinput)
      ],
    );
  }
}
