import 'package:carousel_slider/carousel_options.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'carosul1.dart';

class Carousel extends StatelessWidget {
  PageController _pageController;
  ValueNotifier<int> _pageNumber;

  final c = CarouselWidget();
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            CarouselWidget(),
            Positioned(
              left: 150,
              top: 300,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text("SWIPE", style: TextStyle(color: Colors.white)),
                    Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ]),
            ),
            Positioned(
              right: 150,
              top: 300,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    Text("SWIPE", style: TextStyle(color: Colors.white)),
                  ]),
            ),
            Positioned(
              bottom: 10,
              left: 150,
              child: Container(
                height: 50,
                width: 120,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  onPressed: () {},
                  color: Color(0xffFFD100),
                  textColor: Colors.white,
                  padding: EdgeInsets.all(10),
                  child: Text("Book Now",
                      style: GoogleFonts.oswald(
                          fontSize: 25, color: Colors.white)),
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              right: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0)),
                child: Container(
                  width: 200,
                  child: Column(children: <Widget>[
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text("Welcome To   ",
                            style: GoogleFonts.oswald(
                              fontSize: 20,
                              color: Colors.white,
                            ))),
                    Align(
                        alignment: Alignment.centerRight,
                        child: Text("The Palm ",
                            style: GoogleFonts.oswald(
                              fontSize: 40,
                              color: Colors.white,
                            )))
                  ]),
                  decoration: BoxDecoration(
                    color: Color(0xffFFD100),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
