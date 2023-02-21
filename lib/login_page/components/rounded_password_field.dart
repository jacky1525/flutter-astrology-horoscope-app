import 'package:flutter/material.dart';
import 'package:flutter_burclar/login_page/components/text_field_container.dart';
import 'package:flutter_burclar/login_page/contstants.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<RoundedPasswordField> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool showPassword = true;
  bool showConfirmPassword = true;

  late FocusNode passwordFocusNode;
  late FocusNode confirmPasswordFocusNode;

  @override
  void initState() {
    super.initState();
    passwordFocusNode = FocusNode();
    confirmPasswordFocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      focusNode: confirmPasswordFocusNode,
      onTap: () {
        setState(() {
          FocusScope.of(context).unfocus();
          FocusScope.of(context).requestFocus(confirmPasswordFocusNode);
        });
      },
      obscureText: showConfirmPassword,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
          hintText: "Şifrenizi Giriniz...",
          hintStyle: TextStyle(color: kPrimaryColor),
          icon: Icon(
            Icons.lock,
            color: kPrimaryColor,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.remove_red_eye,
              color: kPrimaryColor,
            ),
            onPressed: () {
              setState(() {
                showPassword = !showPassword;
                showConfirmPassword = !showConfirmPassword;
              });
            },
          ),
          border: InputBorder.none),
    ));
  }
}
