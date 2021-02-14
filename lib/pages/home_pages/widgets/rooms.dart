import 'dart:async';
import 'dart:html';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

List<String> _colors = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

class rooms extends StatelessWidget {
  @override
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _count = 0;
  int i = 0;
  String url = "https://i.ibb.co/GkZYnwK/room-1.png";

  @override
  void initState() {
    super.initState();

    Timer.periodic(Duration(seconds: 10), (timer) {
      setState(() {
        url = _colors[(i++) % 6];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0, left: 170.0),
              child: Text("Explore Our Rooms",
                  style: GoogleFonts.oswald(
                    fontSize: 40,
                    color: Colors.white,
                  )),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 170),
              child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore",
                  style: GoogleFonts.oswald(
                    fontSize: 30,
                    color: Colors.white,
                  )),
            ),
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 120,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffFFD100),
                                // background
                                // foreground
                              ),
                              child: Text('Super Dulex',
                                  style: GoogleFonts.oswald(
                                    fontSize: 20,
                                    color: Colors.white,
                                  )),
                              onPressed: () {
                                setState(() {
                                  url = _colors[0];
                                });
                              }),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 50,
                          width: 120,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffFFD100),
                                // background
                                // foreground
                              ),
                              child: Text('Super Dulex',
                                  style: GoogleFonts.oswald(
                                    fontSize: 20,
                                    color: Colors.white,
                                  )),
                              onPressed: () {
                                setState(() {
                                  url = _colors[1];
                                });
                              }),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 120,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffFFD100),
                                // background
                                // foreground
                              ),
                              child: Text('Super Dulex',
                                  style: GoogleFonts.oswald(
                                    fontSize: 20,
                                    color: Colors.white,
                                  )),
                              onPressed: () {
                                setState(() {
                                  url = _colors[2];
                                });
                              }),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 50,
                          width: 120,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffFFD100),
                                // background
                                // foreground
                              ),
                              child: Text('Super Dulex',
                                  style: GoogleFonts.oswald(
                                    fontSize: 20,
                                    color: Colors.white,
                                  )),
                              onPressed: () {
                                setState(() {
                                  url = _colors[3];
                                });
                              }),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 120,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffFFD100),
                                // background
                                // foreground
                              ),
                              child: Text('Super Dulex',
                                  style: GoogleFonts.oswald(
                                    fontSize: 20,
                                    color: Colors.white,
                                  )),
                              onPressed: () {
                                setState(() {
                                  url = _colors[4];
                                });
                              }),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 50,
                          width: 120,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xffFFD100),
                                // background
                                // foreground
                              ),
                              child: Text('Super Dulex',
                                  style: GoogleFonts.oswald(
                                    fontSize: 20,
                                    color: Colors.white,
                                  )),
                              onPressed: () {
                                setState(() {
                                  url = _colors[5];
                                });
                              }),
                        ),
                      ],
                    ),
                    /*Row(
                      children: [
                        _rb(context),
                        SizedBox(
                          height: 10,
                        ),
                        _rb(context),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        _rb(context),
                        SizedBox(
                          height: 10,
                        ),
                        _rb(context),
                      ],
                    ),*/
                  ],
                ),
                SizedBox(
                  width: 500,
                ),
                AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return ScaleTransition(child: child, scale: animation);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))),
                      height: 400,
                      width: 400,
                      key: ValueKey<String>(url),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image(
                          image: NetworkImage(url),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 100,
            )
          ],
        ));
  }
}
