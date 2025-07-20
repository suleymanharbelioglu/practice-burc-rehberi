import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';
import 'package:practice_burc_rehberi/model/burc.dart';

class BurcDetay extends StatefulWidget {
  final BurcModel burc;
  const BurcDetay({super.key, required this.burc});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color backGroundColor = Colors.transparent;
  late PaletteGenerator paletteGenerator;

  @override
  void initState() {
    super.initState();
    print("intistate");

    generateColor();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: backGroundColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                widget.burc.burcAdi() + " Burcu ve Özellikleri",
                style: TextStyle(color: Colors.white),
              ),
              centerTitle: true,
              background: Image.asset(
                "assets/images/" + widget.burc.burcBuyukResim(),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(10),
              child: Text(
                widget.burc.burcDetay(),
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> generateColor() async {
    paletteGenerator = await PaletteGenerator.fromImageProvider(
      AssetImage("assets/images/" + widget.burc.burcBuyukResim()),
    );
    backGroundColor = paletteGenerator.dominantColor!.color;
    setState(() {});
  }
}
