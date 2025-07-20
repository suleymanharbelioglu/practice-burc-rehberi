import 'package:flutter/material.dart';
import 'package:practice_burc_rehberi/model/burc.dart';
import 'package:practice_burc_rehberi/page/burc_detay.dart';

class BurcItem extends StatelessWidget {
  final BurcModel burc;
  const BurcItem({super.key, required this.burc});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(
          context,
        ).push(MaterialPageRoute(builder: (context) => BurcDetay(burc: burc)));
      },
      child: Card(
        child: ListTile(
          title: Text(burc.burcAdi()),
          subtitle: Text(burc.burcTarihi()),
          leading: Image.asset("assets/images/" + burc.burcKucukResim()),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
