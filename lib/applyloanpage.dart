import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sameed_ui/HomePage.dart';
import 'package:sameed_ui/constant.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Faq.dart';
import 'Loanpage.dart';

class ApplyLoan extends StatefulWidget {
  @override
  _ApplyLoanState createState() => _ApplyLoanState();
}

class _ApplyLoanState extends State<ApplyLoan> {
  Color active = Constant.appColor;
  Color primary = Constant.appColor;
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _key,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.list,
                              color: Colors.black54,
                            ),
                            onPressed: () {
                              _key.currentState.openDrawer();
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 20.0),
                          child: Center(
                            child: Text('Apply for a loan',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w800,
                                    color: Colors.black54)),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 30, right: 30, bottom: 10, top: 10),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 1.0,
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(
                                  left: 10.0, right: 10.0, top: 20.0),
                              child: Center(
                                child: Text(
                                  "Want your chance at some free money Enter into one of our contests for your chance to win",
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                  bottom: 10.0,
                                  top: 10.0),
                              child:new RichText(
                                text: new TextSpan(
                                  children: [

                                    new TextSpan(
                                      text: 'Click here to register for our next upcoming contest to win some cash!',
                                      style: new TextStyle(color: Colors.blue),
                                      recognizer:
                                      new TapGestureRecognizer()..onTap = () { launch('https://moneybacknow.net/contest');
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height:70,),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoanPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset(
                              'images/g2.png',
                              width: 40,
                              height: 40,
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right:70.0),
                                  child: Text(
                                    'PayDay Loan',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0,top:8),
                                  child: Text(
                                    'Typically \$500 or less and loan must be \npaid back by next payday ',
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50),
                  child: Divider(
                    height: 0.3,
                    color: Colors.green,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoanPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset(
                              'images/g3.png',
                              width: 40,
                              height: 40,
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right:70.0),
                                  child: Text(
                                    'Personal Loan',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0,top:8),
                                  child: Text(
                                    'Typically more than \$500 with a term \nrepayment plan ',
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50),
                  child: Divider(
                    height: 0.3,
                    color: Colors.green,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoanPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset(
                              'images/g5.png',
                              width: 40,
                              height: 40,
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right:70.0),
                                  child: Text(
                                    'Business Loan',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0,top:8),
                                  child: Text(
                                    'Typically \$500 or less and loan must be \npaid back by next payday ',
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50),
                  child: Divider(
                    height: 0.3,
                    color: Colors.green,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoanPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset(
                              'images/g4.png',
                              width: 40,
                              height: 40,
                            ),
                            Column(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(right:70.0),
                                  child: Text(
                                    'Instalment Loan',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0,top:8),
                                  child: Text(
                                    'Typically \$500 or less and loan must be \npaid back by next payday ',
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 10),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0, right: 50),
                  child: Divider(
                    height: 0.3,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
                width: MediaQuery.of(context).size.width * 0.85,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      DrawerHeader(
                        child: CircleAvatar(
                            radius: 60,
                            backgroundImage: AssetImage('images/profile.png')),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 40.0),
                        child: Text('User Name'),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView(children: [
                ListTile(
                  leading: Icon(Icons.dashboard),
                  title: Text("DashBoard"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text("Profile"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.calendar_today),
                  title: Text("Upload Center"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                Divider(
                  color: Colors.black45,
                  height: 30,
                  thickness: .2,
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Other"),
                  ),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.not_listed_location),
                  title: Text("FAQ"),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => loanFaq()));
                  },
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text("SUPPORT"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text("LOGOUT"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}
