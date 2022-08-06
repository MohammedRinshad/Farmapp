import 'package:flutter/material.dart';

class FishScreen extends StatefulWidget {
  static const String route = "/Fish";
  const FishScreen({Key? key}) : super(key: key);

  @override
  State<FishScreen> createState() => _FishScreenState();
}

class _FishScreenState extends State<FishScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
          child: Center(child: Text("Fish"))),
    );

  }
}
