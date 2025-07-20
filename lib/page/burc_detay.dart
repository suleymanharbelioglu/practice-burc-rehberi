import 'package:flutter/material.dart';
import 'package:practice_burc_rehberi/model/burc.dart';

class BurcDetay extends StatelessWidget {
  final BurcModel burc;
  const BurcDetay({super.key, required this.burc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("Burc Detay")));
  }
}
