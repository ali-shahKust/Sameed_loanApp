import 'package:flutter/material.dart';
import 'package:sameed_ui/Faq.dart';
import 'package:sameed_ui/Loanpage.dart';
import 'package:sameed_ui/QuotePage.dart';
import 'package:sameed_ui/applyloanpage.dart';
import 'package:sameed_ui/constant.dart';


class LoanHomePage extends StatefulWidget {
  @override
  _LoanHomePageState createState() => _LoanHomePageState();
}

class _LoanHomePageState extends State<LoanHomePage> {
  Color active = Constant.appColor;
  Color primary = Constant.appColor;
  final GlobalKey _scaffoldKey = new GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: ApplyLoan(),
      floatingActionButton: FloatingActionButton(onPressed: () {
      },
        backgroundColor: Constant.appColor,
        child: Icon(Icons.email),
      ),
    );
  }


}