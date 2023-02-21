// ignore_for_file: prefer_interpolation_to_compose_strings, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_burclar/burc_sayfalari/burc_detay.dart';
import 'package:flutter_burclar/login_page/contstants.dart';

import 'package:flutter_burclar/model/burc.dart';
import 'package:palette_generator/palette_generator.dart';

class BurcItem extends StatefulWidget {
  final Burc listelenenBurc;
  const BurcItem({super.key, required this.listelenenBurc});

  @override
  State<BurcItem> createState() => _BurcItemState();
}

class _BurcItemState extends State<BurcItem> {
  Color sliverRengi = Colors.pink;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => sliverRengiBul());
  }

  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        color: kPrimaryLightColor,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) =>
                      BurcDetay(secilenBurc: widget.listelenenBurc),
                ),
              );
            },
            leading: Image.asset(
              'assets/images/' + widget.listelenenBurc.burcKucukResim,
            ),
            title: Text(
              widget.listelenenBurc.burcAdi,
              style: myTextStyle.headline5,
            ),
            subtitle: Text(
              widget.listelenenBurc.burcTarihi,
              style: myTextStyle.subtitle1,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }

  sliverRengiBul() async {
    _generator = await PaletteGenerator.fromImageProvider(
        AssetImage('assets/images/${widget.listelenenBurc.burcBuyukResim}'));
    sliverRengi = _generator.dominantColor!.color;
    setState(() {});
  }
}
