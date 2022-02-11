import 'package:domicil_app_flutter/src/pages/home/home_page.dart';
import 'package:domicil_app_flutter/src/pages/login/login_page.dart';
import 'package:flutter/material.dart';
import 'package:domicil_app_flutter/src/utils/colors_app.dart' as utils;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "DomicilApp",
      initialRoute: "home",
      theme: ThemeData(
          appBarTheme: const AppBarTheme(elevation: 0),
          fontFamily: 'NimbusSans',
          primaryColor: utils.Colors.colorApp),
      routes: {
        "home": (BuildContext contex) => HomePage(),
        'login': (BuildContext context) => LoginPage()
      },
    );
  }
}
