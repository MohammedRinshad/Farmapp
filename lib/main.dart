import 'package:farm/screen/Dairy/dairy_screen.dart';
import 'package:farm/utils/app_routes.dart';
import 'package:flutter/material.dart';

import 'screen/all_fields.dart';
import 'screen/Dairy/diary_animal_details.dart';
import 'screen/paddy/paddy_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Farm',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: appRoutes(),
      onGenerateRoute: onAppGenerateRoute(),
      initialRoute: FarmRadioButton.route,
    );
  }
}
