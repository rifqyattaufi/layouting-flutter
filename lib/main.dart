import 'package:flutter/material.dart';
import 'package:layouting_flutter/body.dart';
import 'package:layouting_flutter/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme(),
      home: TextScalePage(),
    );
  }
}

ThemeData theme() {
  return ThemeData(
    appBarTheme: AppBarTheme(
        color: Colors.white10,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: TextTheme(
          headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
        )),
  );
}
