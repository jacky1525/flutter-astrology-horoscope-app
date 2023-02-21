import 'package:flutter/material.dart';
import 'package:flutter_burclar/burc_sayfalari/burc_listesi.dart';
import 'package:flutter_burclar/login_page/contstants.dart';
import 'package:flutter_burclar/login_page/screens/welcome/components/body.dart';
import 'package:flutter_burclar/login_page/screens/welcome/welcome_screen.dart';
import 'package:flutter_burclar/login_page/screens/login/login_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
         GlobalMaterialLocalizations.delegate
       ],
       supportedLocales: [
         const Locale('en'),
         const Locale('tr')
       ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        backgroundColor: kPrimaryColor),
      home: WelcomeScreen(),
    );
  }
}
