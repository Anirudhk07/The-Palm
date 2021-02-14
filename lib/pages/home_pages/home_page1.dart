import 'package:flutter/material.dart';
import 'package:the_palm_project/pages/home_pages/widgets/ammenities.dart';
import 'package:the_palm_project/pages/home_pages/widgets/ctest.dart';
import 'package:the_palm_project/pages/home_pages/widgets/exploremore.dart';
import 'package:the_palm_project/pages/home_pages/widgets/rooms.dart';
import 'widgets/carosul.dart';
import 'widgets/navbar.dart';
import 'widgets/exploremore.dart';
import 'widgets/rooms.dart';
import 'widgets/ctest.dart';
import 'widgets/geooey.dart';

class HomePage1 extends StatefulWidget {
  @override
  _HomePage1State createState() => _HomePage1State();
}

class _HomePage1State extends State<HomePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          navbar(),
          Carousel(),
          explore(),
          rooms(),
          amm(),
        ],
      ),
    );
  }
}
