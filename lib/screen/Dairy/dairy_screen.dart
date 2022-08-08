import 'package:flutter/material.dart';

import 'diary_animal_details.dart';

class DairyScreen extends StatefulWidget {
  static const String route = "/DairyScreen";
  const DairyScreen({Key? key}) : super(key: key);

  @override
  State<DairyScreen> createState() => _DairyScreenState();
}

class _DairyScreenState extends State<DairyScreen> {
  TextEditingController fieldNameInputController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 50),
                child: Text(
                  "Describe your Dairy..?",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: fieldNameInputController,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            focusColor: Colors.grey,
                            fillColor: Colors.red,
                            hintText: 'Lactating animals..         ',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.blue, width: 2.0),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            )),
                        validator: (value) {
                          //return Validate.emailValidator(value!.trim());
                        },
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10),
                        child: TextFormField(
                          controller: fieldNameInputController,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              focusColor: Colors.grey,
                              fillColor: Colors.red,
                              hintText: 'Count',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 2.0),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.blue,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          validator: (value) {
                            //return Validate.emailValidator(value!.trim());
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: fieldNameInputController,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            focusColor: Colors.grey,
                            fillColor: Colors.red,
                            hintText: 'Lactating animals..         ',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.blue, width: 2.0),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            )),
                        validator: (value) {
                          //return Validate.emailValidator(value!.trim());
                        },
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10),
                        child: TextFormField(
                          controller: fieldNameInputController,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              focusColor: Colors.grey,
                              fillColor: Colors.red,
                              hintText: 'Count',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 2.0),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.blue,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          validator: (value) {
                            //return Validate.emailValidator(value!.trim());
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: fieldNameInputController,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            focusColor: Colors.grey,
                            fillColor: Colors.red,
                            hintText: 'Lactating animals..         ',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.blue, width: 2.0),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            )),
                        validator: (value) {
                          //return Validate.emailValidator(value!.trim());
                        },
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10),
                        child: TextFormField(
                          controller: fieldNameInputController,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              focusColor: Colors.grey,
                              fillColor: Colors.red,
                              hintText: 'Count',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 2.0),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.blue,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          validator: (value) {
                            //return Validate.emailValidator(value!.trim());
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: fieldNameInputController,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            focusColor: Colors.grey,
                            fillColor: Colors.red,
                            hintText: 'Lactating animals..         ',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.blue, width: 2.0),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            )),
                        validator: (value) {
                          //return Validate.emailValidator(value!.trim());
                        },
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10),
                        child: TextFormField(
                          controller: fieldNameInputController,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              focusColor: Colors.grey,
                              fillColor: Colors.red,
                              hintText: 'Count',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 2.0),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.blue,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          validator: (value) {
                            //return Validate.emailValidator(value!.trim());
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: fieldNameInputController,
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            focusColor: Colors.grey,
                            fillColor: Colors.red,
                            hintText: 'Lactating animals..         ',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.blue, width: 2.0),
                                borderRadius: BorderRadius.circular(10)),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2.0,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            )),
                        validator: (value) {
                          //return Validate.emailValidator(value!.trim());
                        },
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 10),
                        child: TextFormField(
                          controller: fieldNameInputController,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                              focusColor: Colors.grey,
                              fillColor: Colors.red,
                              hintText: 'Count',
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.blue, width: 2.0),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.blue,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              )),
                          validator: (value) {
                            //return Validate.emailValidator(value!.trim());
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200, top: 50),
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
                      Navigator.pushNamed(context, DairyAnimalDetail.route);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
