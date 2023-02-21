// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_interpolation_to_compose_strings, unused_import

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_burclar/login_page/contstants.dart';
import 'package:flutter_burclar/model/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({super.key, required this.secilenBurc});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appbarRengi = Colors.pink;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => appbarRenginiBul());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryLightColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appbarRengi,
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  widget.secilenBurc.burcAdi + ' Burcu ve Özellikleri',
                  style: TextStyle(
                      color: kPrimaryLightColor,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                centerTitle: true,
                background: Image.asset(
                  'assets/images/' + widget.secilenBurc.burcBuyukResim,
                  fit: BoxFit.cover,
                )),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Text(
                  widget.secilenBurc.burcDetayi,
                  style: TextStyle(
                      color: appbarRengi,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  void appbarRenginiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('assets/images/${widget.secilenBurc.burcBuyukResim}'));
    appbarRengi = _generator.dominantColor!.color;
    setState(() {});
  }
}
