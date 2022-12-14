import 'package:farm/screen/login/otpScreen.dart';
import 'package:farm/screen/login/login_screen.dart';
import 'package:farm/utils/slide_right_routes.dart';
import 'package:flutter/material.dart';

import '../screen/all_fields.dart';
import '../screen/Dairy/dairy_screen.dart';
import '../screen/Dairy/diary_animal_details.dart';
import '../screen/chicken.dart';
import '../screen/fish.dart';
import '../screen/login/forgotScreen.dart';
import '../screen/paddy/paddy_screen.dart';
import '../screen/vegitables.dart';

Map<String, WidgetBuilder> appRoutes() => {
      LoginScreen.route: (_) => const LoginScreen(),
      // LoginScreen.route: (_) => const LoginScreen(),
    };
RouteFactory onAppGenerateRoute() => (settings) {
      switch (settings.name) {
        case LoginScreen.route:
          return SlideRightRoute(const LoginScreen());

        case OtpScreen.route:
          return SlideRightRoute(const OtpScreen());

        case ForgotScreen.route:
          return SlideRightRoute(const ForgotScreen());

        case FarmRadioButton.route:
          return SlideRightRoute(const FarmRadioButton());

        case PaddyScreen.route:
          return SlideRightRoute(const PaddyScreen());

        case DairyScreen.route:
          return SlideRightRoute(const DairyScreen());

        case DairyAnimalDetail.route:
          return SlideRightRoute(const DairyAnimalDetail());

        case Chicken.route:
          return SlideRightRoute(const Chicken());

        case FishScreen.route:
          return SlideRightRoute(const FishScreen());

        case VegitableScreen.route:
          return SlideRightRoute(const VegitableScreen());
      }
    };
