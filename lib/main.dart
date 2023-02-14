import 'package:componentes_23/router/app_routes.dart';
import 'package:flutter/material.dart';

import 'screens/screens.dart';

// import 'package:componentes_23/screens/alert_screen.dart';
// import 'package:componentes_23/screens/card_screen.dart';
// import 'package:componentes_23/screens/listview1_screen.dart';
// import 'package:componentes_23/screens/listview2_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      // home: CardScreen(),
      // initialRoute: 'home',
      initialRoute: AppRoutes.initialRoute,
      // routes: {
      //   'listview1': (context) => ListView1Screen(),
      //   'listview2': (context) => ListView2Screen(),
      //   'alert': (context) => AlertScreen(),
      //   'card': (context) => CardScreen(),
      //   'home': (context) => HomeScreen(),
      // },
      routes: AppRoutes.getRoutes()
    );
  }
}