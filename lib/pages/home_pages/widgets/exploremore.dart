import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Row(
        children: [
          Container(
            width: (MediaQuery.of(context).size.width) / 2,
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  child: Column(children: <Widget>[
                    Row(
                      children: [
                        SizedBox(
                          width: 180,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Hello",
                                style: GoogleFonts.oswald(
                                  fontSize: 20,
                                  color: Colors.white,
                                ))),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 180,
                        ),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("We Are The Palm ",
                                style: GoogleFonts.oswald(
                                  fontSize: 40,
                                  color: Colors.white,
                                ))),
                      ],
                    )
                  ]),
                ),
                SizedBox(
                  height: 100,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      height: 500,
                      width: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://i.ibb.co/xf98dnz/d-Zb-Blss3-Fy-E.png'),
                        ),
                      )),
                )
              ],
            ),
          ),
          Container(
            width: (MediaQuery.of(context).size.width) / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 150,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                      alignment: Alignment.centerLeft,
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://i.ibb.co/py49Lpk/Koei-7y-Yt-Io.png'),
                        ),
                      )),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  height: 300,
                  width: 400,
                  child: Column(
                    children: [
                      Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
                          style: GoogleFonts.oswald(
                            fontSize: 20,
                            color: Colors.white,
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.topLeft,
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
                            child: Text("Learn More",
                                style: GoogleFonts.oswald(
                                    fontSize: 25, color: Colors.white)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
