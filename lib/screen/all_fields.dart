import 'dart:ffi';

import 'package:farm/screen/chicken.dart';
import 'package:farm/screen/fish.dart';
import 'package:farm/screen/paddy/paddy_screen.dart';
import 'package:farm/screen/vegitables.dart';
import 'package:flutter/material.dart';

import 'Dairy/dairy_screen.dart';

enum FarmItems { paddy, vegitable, chicken, diary, fish }

class FarmRadioButton extends StatefulWidget {
  static const String route = "/FarmRadioButton";
  const FarmRadioButton({Key? key}) : super(key: key);

  @override
  State<FarmRadioButton> createState() => _FarmRadioButtonState();
}

class _FarmRadioButtonState extends State<FarmRadioButton> {
  FarmItems _items = FarmItems.paddy;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Farm'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30),
              child: Text(
                "What do you farm..?",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              title: const Text(
                'Paddy',
                style: TextStyle(fontSize: 20),
              ),
              leading: Radio(
                value: FarmItems.paddy,
                groupValue: _items,
                onChanged: (FarmItems? value) {
                  setState(() {
                    _items = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text(
                'vegitables',
                style: TextStyle(fontSize: 20),
              ),
              leading: Radio(
                value: FarmItems.vegitable,
                groupValue: _items,
                onChanged: (FarmItems? value) {
                  setState(() {
                    _items = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text(
                'Chicken',
                style: TextStyle(fontSize: 20),
              ),
              leading: Radio(
                value: FarmItems.chicken,
                groupValue: _items,
                onChanged: (FarmItems? value) {
                  setState(() {
                    _items = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text(
                'Dairy',
                style: TextStyle(fontSize: 20),
              ),
              leading: Radio(
                value: FarmItems.diary,
                groupValue: _items,
                onChanged: (FarmItems? value) {
                  setState(() {
                    _items = value!;
                  });
                },
              ),
            ),
            ListTile(
              title: const Text(
                'Fish',
                style: TextStyle(fontSize: 20),
              ),
              leading: Radio(
                value: FarmItems.fish,
                groupValue: _items,
                onChanged: (FarmItems? value) {
                  setState(() {
                    _items = value!;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200, top: 200),
              child: Center(
                child: InkWell(
                  child: Container(
                    height: 40,
                    width: 100,
                    decoration: const BoxDecoration(color: Colors.blue),
                    child: const Center(
                        child: Text(
                      'Next',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                  onTap: () {
                    // if(FarmItems.paddy == _items){
                    // Navigator.pushNamed(context, PaddyScreen.route);
                    // }else{
                    //  Navigator.pushNamed(context, DairyScreen.route);
                    // }
                    if (FarmItems.paddy == _items) {
                      Navigator.pushNamed(context, PaddyScreen.route);
                    } else if (FarmItems.diary == _items) {
                      Navigator.pushNamed(context, DairyScreen.route);
                    } else if (FarmItems.vegitable == _items) {
                      Navigator.pushNamed(context, VegitableScreen.route);
                    } else if (FarmItems.chicken == _items) {
                      Navigator.pushNamed(context, Chicken.route);
                    } else if (FarmItems.fish == _items) {
                      Navigator.pushNamed(context, FishScreen.route);
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
