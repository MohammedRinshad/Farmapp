import 'package:flutter/material.dart';

class VegitableScreen extends StatefulWidget {
  static const String route = "/Vegitable";
  const VegitableScreen({Key? key}) : super(key: key);

  @override
  State<VegitableScreen> createState() => _VegitableScreenState();
}

class _VegitableScreenState extends State<VegitableScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Center(child: Text("vegitabe"))),
    );

  }
}
