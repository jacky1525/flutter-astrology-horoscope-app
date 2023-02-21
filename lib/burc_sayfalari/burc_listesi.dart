import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter_burclar/burc_sayfalari/burc_item.dart';
import 'package:flutter_burclar/burc_sayfalari/profile/profil_detay.dart';

import 'package:flutter_burclar/data/burc_strings.dart';
import 'package:flutter_burclar/login_page/contstants.dart';
import 'package:flutter_burclar/login_page/screens/welcome/welcome_screen.dart';
import 'package:flutter_burclar/model/burc.dart';

class BurcListesi extends StatefulWidget {
  late List<Burc> tumBurclar;
  BurcListesi() {
    tumBurclar = veriHazirla();
  }

  @override
  State<BurcListesi> createState() => _BurcListesiState();
}

class _BurcListesiState extends State<BurcListesi>
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
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'BURÇLAR',
          style: TextStyle(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor),
        ),
        backgroundColor: kPrimaryLightColor,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: widget.tumBurclar.length,
          itemBuilder: (
            BuildContext context,
            int index,
          ) {
            return BurcItem(listelenenBurc: widget.tumBurclar[index]);
          },
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: kPrimaryLightColor,
        child: Icon(
          Icons.person,
          color: kPrimaryColor,
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ProfilePage(),
            ),
          );
        },
      ),
    );
  }
}

List<Burc> veriHazirla() {
  List<Burc> gecici = [];
  for (int i = 0; i < 12; i++) {
    var burcAdi = Strings.BURC_ADLARI[i];
    var burcTarih = Strings.BURC_TARIHLERI[i];
    var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];
    var burcKucukResim = Strings.BURC_ADLARI[i].toLowerCase() + '${i + 1}.png';
    var burcBuyukResim =
        Strings.BURC_ADLARI[i].toLowerCase() + '_buyuk' + '${i + 1}.png';

    Burc eklenecekBurc =
        Burc(burcAdi, burcTarih, burcDetay, burcKucukResim, burcBuyukResim);
    gecici.add(eklenecekBurc);
  }

  return gecici;
}
