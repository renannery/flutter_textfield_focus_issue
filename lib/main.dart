import 'package:flutter/material.dart';
import 'package:focus_textfield/main_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final navKey = new GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: navKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainView(),
    );
  }
}
