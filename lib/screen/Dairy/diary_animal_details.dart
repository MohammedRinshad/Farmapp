
import 'package:farm/screen/all_fields.dart';
import 'package:flutter/material.dart';
enum FarmGender{male,female}

class DairyAnimalDetail extends StatefulWidget {
  static const String route = "/DairyAnimalDetail";
  const DairyAnimalDetail({Key? key}) : super(key: key);

  @override
  State<DairyAnimalDetail> createState() => _DairyAnimalDetailState();
}

class _DairyAnimalDetailState extends State<DairyAnimalDetail> {
  TextEditingController animalIdInputController = TextEditingController();
  TextEditingController animalNameInputController = TextEditingController();
  TextEditingController animalBreedInputController = TextEditingController();
  TextEditingController animalAgeInputController = TextEditingController();
  TextEditingController numberOfLactationInputController = TextEditingController();
  TextEditingController lastDeliveryInputController = TextEditingController();
  TextEditingController lastInseminationInputController = TextEditingController();
  TextEditingController motherInputController = TextEditingController();
  TextEditingController inseminationBreedInputController = TextEditingController();

  FarmGender _items = FarmGender.male;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10,),
                  const Padding(
                    padding:  EdgeInsets.only(left: 10),
                    child:  Text("Animal Details",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  ),const SizedBox(height: 10,),
                  TextFormField(
                    controller: animalIdInputController,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        focusColor: Colors.grey,
                        fillColor: Colors.red,
                        hintText: 'Animal id',
                        hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: "RobotoSlab-VariableFont_wght.ttf"),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blue,width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffef5350),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        )
                    ),
                    validator: (value) {
                      //return Validate.emailValidator(value!.trim());
                    },
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: animalNameInputController,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        focusColor: Colors.grey,
                        fillColor: Colors.red,
                        hintText: 'Animal name',
                        hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: "RobotoSlab-VariableFont_wght.ttf"),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blue,width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffef5350),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    validator: (value) {
                      //return Validate.emailValidator(value!.trim());
                    },
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: animalBreedInputController,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        focusColor: Colors.grey,
                        fillColor: Colors.red,
                        hintText: 'Animal Breed',
                        hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: "RobotoSlab-VariableFont_wght.ttf"),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blue,width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffef5350),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    validator: (value) {
                      //return Validate.emailValidator(value!.trim());
                    },
                  ),
                  const SizedBox(height: 10,),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Gender",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListTile(
                          title: const Text('Male'),
                          leading: Radio(
                            value: FarmGender.male,
                            groupValue: _items,
                            onChanged: (FarmGender? value) {
                              setState(() {
                                _items = value!;
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: ListTile(
                          title: const Text('Female'),
                          leading: Radio(
                            value: FarmGender.female,
                            groupValue: _items,
                            onChanged: (FarmGender? value) {
                              setState(() {
                                _items = value!;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: animalAgeInputController,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        focusColor: Colors.grey,
                        fillColor: Colors.red,
                        hintText: 'Animal Age',
                        hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: "RobotoSlab-VariableFont_wght.ttf"),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blue,width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffef5350),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    validator: (value) {
                      //return Validate.emailValidator(value!.trim());
                    },
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: numberOfLactationInputController,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        focusColor: Colors.grey,
                        fillColor: Colors.red,
                        hintText: 'Number of Lactation',
                        hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: "RobotoSlab-VariableFont_wght.ttf"),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blue,width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffef5350),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    validator: (value) {
                      //return Validate.emailValidator(value!.trim());
                    },
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: lastDeliveryInputController,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        focusColor: Colors.grey,
                        fillColor: Colors.red,
                        hintText: 'Last Delivery Date',
                        hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: "RobotoSlab-VariableFont_wght.ttf"),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blue,width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffef5350),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    validator: (value) {
                      //return Validate.emailValidator(value!.trim());
                    },
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: lastInseminationInputController,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        focusColor: Colors.grey,
                        fillColor: Colors.red,
                        hintText: 'Last Insemination date',
                        hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: "RobotoSlab-VariableFont_wght.ttf"),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blue,width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffef5350),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    validator: (value) {
                      //return Validate.emailValidator(value!.trim());
                    },
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: motherInputController,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        focusColor: Colors.grey,
                        fillColor: Colors.red,
                        hintText: 'Mother',
                        hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: "RobotoSlab-VariableFont_wght.ttf"),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blue,width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffef5350),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    validator: (value) {
                      //return Validate.emailValidator(value!.trim());
                    },
                  ),
                  const SizedBox(height: 10,),
                  TextFormField(
                    controller: inseminationBreedInputController,
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        focusColor: Colors.grey,
                        fillColor: Colors.red,
                        hintText: 'Insemination breed',
                        hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: "RobotoSlab-VariableFont_wght.ttf"),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.blue,width: 2.0),
                            borderRadius: BorderRadius.circular(10)),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xffef5350),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(15),
                        )),
                    validator: (value) {
                      //return Validate.emailValidator(value!.trim());
                    },
                  ),
                  const SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      child: Container(
                        height: 40,width: 100,
                        decoration: const BoxDecoration(color: Colors.blue),
                        child: const Center(child: Text('Save',style: TextStyle(fontSize: 20,color: Colors.white),)),
                      ),
                      onTap: (){
                        Navigator.pushNamed(context, FarmRadioButton.route);

                      },
                    ),
                  ),
                  const SizedBox(height: 20,),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
