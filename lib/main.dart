import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/splash.dart';
import 'presentation/welcome.dart';

void main() {
  runApp(MyApp());
}

var routes = <String, WidgetBuilder>{
  "/welcome": (BuildContext context) => welcome(),
  // "/intro": (BuildContext context) => IntroScreen(),
  // "chat": (BuildContext context) => IntroScreen(),
};


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: splash(),
      routes: routes,
    );
  }
}

