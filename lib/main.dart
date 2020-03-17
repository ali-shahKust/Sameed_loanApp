import 'package:flutter/material.dart';
import 'package:sameed_ui/Faq.dart';
import 'package:sameed_ui/HomePage.dart';
import 'package:sameed_ui/Loanpage.dart';
import 'package:sameed_ui/QuotePage.dart';
import 'package:sameed_ui/applyloanpage.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
    home:MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

     body: LoanHomePage(),
    );
  }
}
