import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_star_rating_null_safety/smooth_star_rating_null_safety.dart';

import 'carouselslider2.dart';

class MySlider1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //resizeToAvoidBottomInset: false,
        body: Container(
            //borderRadius: BorderRadius.circular(19),
            child: Column(children: [
      CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 1.5,
          viewportFraction: 1.5,
          enlargeCenterPage: true,
          autoPlay: true,
          autoPlayCurve: Curves.easeInOut,
          //autoPlayInterval: Duration(seconds: 3),
          enableInfiniteScroll: true,
          initialPage: 2,
        ),
        items: images.map((imagepath) {
          return Builder(builder: (BuildContext context) {
            return Container(
              child: Image.network(imagepath),
            );
          });
        }).toList(),
      ),
      smooth(),
      _text(),
      _text1(),
      _text2(),
      _text3(),
      _text4(),
    ])));
  }
}

Widget smooth() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    alignment: Alignment.topLeft,
    child: SmoothStarRating(
      rating: 4.5,
      starCount: 5,
      size: 30,
      borderColor: Color.fromARGB(239, 253, 228, 3),
      color: Color.fromARGB(242, 246, 222, 2),
    ),
  );
}

Widget _text4() {
  return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.symmetric(vertical: 12),
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        " Popular Treks",
        style: TextStyle(
            fontSize: 27, color: Colors.black, fontWeight: FontWeight.w500),
      ));
}

Widget _text() {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        "The Kashmir Great Lakes Trek is an alpine himalayan high-altitude trek in the Kashmir Valley in the Indian state of Jammu and Kashmir",
        style: TextStyle(
            fontSize: 18,
            color: Color.fromARGB(151, 0, 0, 0),
            fontWeight: FontWeight.w400),
      ));
}

Widget _text1() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 14),
    padding: EdgeInsets.all(10),
    alignment: Alignment.topLeft,
    child: Column(
      children: [
        Text("• Camping at multiple locations with star-light",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(155, 0, 0, 0),
                fontStyle: FontStyle.normal)),
      ],
    ),
  );
}

Widget _text2() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 14),
    //padding: EdgeInsets.all(10),
    alignment: Alignment.topLeft,
    child: Column(
      children: [
        Text(
          "  • Lo-Fi songs with camp fires and gossips",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(155, 0, 0, 0),
              fontStyle: FontStyle.normal),
        ),
      ],
    ),
  );
}

Widget _text3() {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 14),
    padding: EdgeInsets.all(1),
    alignment: Alignment.topLeft,
    child: Column(
      children: [
        Text(
          "  • Picturesque sceneries while trekking",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(155, 0, 0, 0),
              fontStyle: FontStyle.normal),
        ),
      ],
    ),
  );
}

final List images = [
  "https://d2arefwb13m7zw.cloudfront.net/activities/asix2pf/600_ylswnp65yt7ih2fo63b0.jpg",
  "https://d2arefwb13m7zw.cloudfront.net/activities/asix2pf/600_ugjlfdhquadyzoxl55tq.jpg",
  "https://d2arefwb13m7zw.cloudfront.net/activities/asix2pf/600_yysakkwijv4eremexjuq.jpg",
];
