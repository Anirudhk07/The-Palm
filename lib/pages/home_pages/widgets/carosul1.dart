import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gooey_carousel/gooey_carrousel.dart';

class CarouselWidget extends StatefulWidget {
  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  void nextSlide() {
    _pageNumber.value += 1;
    _pageController.animateToPage(
      _pageNumber.value,
      duration: Duration(milliseconds: 10),
      curve: Curves.easeIn,
    );
  }

  List<String> _colors = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  PageController _pageController;
  ValueNotifier<int> _pageNumber;

  @override
  void initState() {
    super.initState();

    _pageController = PageController(initialPage: 10000);
    _pageNumber = ValueNotifier<int>(10000);
    Timer.periodic(Duration(seconds: 10), (timer) {
      nextSlide();
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40.0),
                    bottomRight: Radius.circular(40.0)),
                color: Colors.white,
              ),
              width: 1290,
              height: 650,
              child: PageView.builder(
                controller: _pageController,
                itemBuilder: (BuildContext context, int idx) {
                  int index = getRealIndex(idx);
                  return Container(
                    child: Image(
                        image: NetworkImage(_colors[index]), fit: BoxFit.cover),
                  );
                },
                onPageChanged: (index) {
                  _pageNumber.value = index;
                },
              ),
            )),
      ],
    );
  }

  void previousSlide() {
    _pageNumber.value -= 1;
    _pageController.animateToPage(
      _pageNumber.value,
      duration: Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
  }

  int getRealIndex(int idx) {
    int index = (idx - 10000) % _colors.length;
    return index;
  }
}
