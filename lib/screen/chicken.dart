
import 'package:flutter/material.dart';

class Chicken extends StatefulWidget {
  static const String route = "/ChickenScreen";
  const Chicken({Key? key}) : super(key: key);

  @override
  State<Chicken> createState() => _ChickenState();
}

class _ChickenState extends State<Chicken> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Center(child: Text("Chicken"))),
    );

  }
}
