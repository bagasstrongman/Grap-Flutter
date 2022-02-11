import 'package:flutter/material.dart';
import 'package:flutter_grep_clone/home_page.dart';
import 'package:flutter_grep_clone/launcher.dart';
import 'package:flutter_grep_clone/order_page.dart';
import 'package:flutter_grep_clone/slider_trial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OrderPage(),
    );
  }
}