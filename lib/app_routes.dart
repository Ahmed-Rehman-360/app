import 'package:flutter/material.dart';
import 'package:medical_app/Screens/login_screen.dart';
import 'package:medical_app/Screens/splash_screen.dart';
import 'package:medical_app/screens/main_screen.dart';
import 'package:medical_app/screens/signup_screen.dart';
import 'drawer/drawer_routes.dart';

class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String main = '/main';

  static Map<String, WidgetBuilder> routes = {
    splash: (context) => SplashScreen(),
    login: (context) => LoginScreen(),
    signup: (context) => SignUpScreen(),
    main: (context) => MainScreen(),
    ...DrawerRoutes.routes,
  };
}