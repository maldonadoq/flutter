import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(      
      debugShowCheckedModeBanner: false,
      title: 'MaterialApp',
      home: SafeArea(
        child: Text('Hello World')
      )
    );
  }
}