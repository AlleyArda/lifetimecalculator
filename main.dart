import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: ThemeData(
      scaffoldBackgroundColor: Colors.green,
      primaryColor: Colors.green,

    ),
      home: InputPage(),
    );
  }
}
