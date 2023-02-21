import 'package:flutter/material.dart';
import 'package:flutter_burclar/login_page/components/text_field_container.dart';
import 'package:flutter_burclar/login_page/contstants.dart';
import 'package:intl/intl.dart';

class DateTimeField extends StatefulWidget {
  const DateTimeField({
    Key? key,
    required this.dateinput,
  }) : super(key: key);

  final TextEditingController dateinput;

  @override
  State<DateTimeField> createState() => _DateTimeFieldState();
}

class _DateTimeFieldState extends State<DateTimeField> {
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      textAlign: TextAlign.center,
      controller: widget.dateinput,
      decoration: InputDecoration(
        hintText: "Doğum Tarihinizi Giriniz",
        hintStyle: TextStyle(color: kPrimaryLightColor),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
        filled: true,
        fillColor: kPrimaryColor,
        icon: Icon(Icons.calendar_today, color: kPrimaryColor),
      ),
      readOnly: true,
      onTap: () async {
        DateTime? pickedDate = await showDatePicker(
            context: context,
            locale: const Locale("tr","TR"),
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2101));

        if (pickedDate != null) {
          print(pickedDate);
          String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);

          setState(() {
            dateinput.text = formattedDate;
          });
        }
      },
    ));
  }
}
