import 'package:app_beer/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de bebida',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
  
}




