import 'package:flutter/material.dart';

final textStyle = TextStyle(
  fontSize: 20.0,
  color: Colors.white
);

final liquidPages = [
  Container(
    color: Colors.pinkAccent,
    child: Center(
      child: Text('Slide 1', style: textStyle),
    ),
  ),
  Container(
    color: Colors.deepPurpleAccent,
    child: Center(
      child: Text('Slide 2', style: textStyle),
    ),
  ),
  Container(
    color: Colors.greenAccent,
    child: Center(
      child: Text('Slide 3', style: textStyle),
    ),
  ),
  Container(
    color: Colors.blueAccent,
    child: Center(
      child: Text('Slide 4', style: textStyle),
    ),
  ),
  Container(
    color: Colors.orangeAccent,
    child: Center(
      child: Text('Slide 5', style: textStyle),
    ),
  )
];