import 'package:flutter/material.dart';
import 'app_routes.dart';
import 'drawer/drawer_routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: AppRoutes.splash,
      routes: {
        ...AppRoutes.routes,
        ...DrawerRoutes.routes,
      },
    );
  }
}