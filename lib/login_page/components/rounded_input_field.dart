import 'package:flutter/material.dart';
import 'package:flutter_burclar/login_page/components/text_field_container.dart';
import 'package:flutter_burclar/login_page/contstants.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final bool filledTrue;
  final ValueChanged<String> onChanged;
  final InputBorder iBorder;
  final TextAlign textAlignValue;
  final Color? color ;
  final Color? hintTextColor;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
    required this.filledTrue,
    required this.iBorder,
    required this.textAlignValue, required this.color, required this.hintTextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      style: TextStyle(color: color),
      textAlign: textAlignValue,
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: filledTrue,
        fillColor: kPrimaryColor,
        icon: Icon(
          icon,
          color: kPrimaryColor,
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: hintTextColor,
        ),
        border: iBorder,
      ),
    ));
  }
}
