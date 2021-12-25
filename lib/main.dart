import 'package:absen/login_view.dart';
import 'package:flutter/material.dart';
import 'main_view.dart';
import 'profile_view.dart';
import 'log_view.dart';
import 'login_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => LoginPage(),
    MainPage.tag: (context) => MainPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Absen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
