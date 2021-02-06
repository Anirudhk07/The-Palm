import 'package:flutter/material.dart';
import 'package:the_palm_project/pages/home_pages/home_page1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      //Pass your page widget for testing
      home: HomePage1(),
    );
  }
}
