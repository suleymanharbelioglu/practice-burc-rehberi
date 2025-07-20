import 'package:flutter/material.dart';
import 'package:practice_burc_rehberi/page/burc_list.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: BurcListPage(),
    );
  }
}
