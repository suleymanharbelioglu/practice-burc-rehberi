import 'package:flutter/material.dart';
import 'package:practice_burc_rehberi/data/strings.dart';
import 'package:practice_burc_rehberi/model/burc.dart';
import 'package:practice_burc_rehberi/widget/burc_item.dart';

class BurcListPage extends StatelessWidget {
  late final List<BurcModel> burcList;
  BurcListPage({super.key}) {
    burcList = veriKaynaginiHazirla();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Burc Listesi")),
      body: ListView.builder(
        itemCount: burcList.length,
        itemBuilder: (context, index) {
          return BurcItem(burc: burcList[index]);
        },
      ),
    );
  }

  List<BurcModel> veriKaynaginiHazirla() {
    List<BurcModel> gecici = [];
    for (int i = 0; i < Strings.burcAdList.length; i++) {
      gecici.add(
        BurcModel(
          burcAdi: Strings.burcAdList[i],
          burcTarihi: Strings.burcTarihList[i],
          burcDetay: Strings.burcDetayList[i],
          burcKucukResim:
              Strings.burcAdList[i].toLowerCase() + (i + 1).toString() + ".png",
          burcBuyukResim:
              Strings.burcAdList[i].toLowerCase() +
              "_buyuk" +
              (i + 1).toString() +
              ".png",
        ),
      );
    }
    print(gecici);
    return gecici;
  }
}
