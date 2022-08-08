import 'package:farm/screen/all_fields.dart';
import 'package:flutter/material.dart';

class PaddyScreen extends StatefulWidget {
  static const String route = "/PaddyScreen";
  const PaddyScreen({Key? key}) : super(key: key);

  @override
  State<PaddyScreen> createState() => _PaddyScreenState();
}

class _PaddyScreenState extends State<PaddyScreen> {
  TextEditingController fieldNameInputController = TextEditingController();
  TextEditingController acresInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10, top: 100),
                  child: Text(
                    "Describe Your Paddy..?",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: fieldNameInputController,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        focusColor: Colors.grey,
                        fillColor: Colors.red,
                        hintText: 'Field name',
                        hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: "RobotoSlab-VariableFont_wght.ttf"),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blue, width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        )),
                    validator: (value) {
                      //return Validate.emailValidator(value!.trim());
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TextFormField(
                    controller: acresInputController,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        focusColor: Colors.grey,
                        fillColor: Colors.red,
                        hintText: 'Acres',
                        hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: "RobotoSlab-VariableFont_wght.ttf"),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blue, width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.blue,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        )),
                    validator: (value) {
                      //return Validate.emailValidator(value!.trim());
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
                        Navigator.pushNamed(context, FarmRadioButton.route);
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
