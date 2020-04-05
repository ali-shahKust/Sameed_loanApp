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
                          color: Constant.appColor,
                        ),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: EdgeInsets.only(
                                  left: 20.0,
                                  right: 70.0,
                                  bottom: 10.0,
                                  top: 10.0),
                              child: Center(
                                child: Text(
                                  "Need a money now!",
                                  style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.only(
                                  left: 5.0,
                                  right: 100.0,
                                  bottom: 10.0,
                                  top: 5.0),
                              child: Center(
                                child: Text(
                                  "We work with bad credit. \nFast application process. \nBuild credit.",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height:20,),
               Padding(
                 padding: const EdgeInsets.only(top:12.0, left: 23,bottom: 15),
                 child: Text('Get Started Now...',style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey.shade600),
                  ),
               ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoanPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left :22.0, top:8),
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
                                  padding: const EdgeInsets.only(right:145.0),
                                  child: Text(
                                    'PayDay Loan',
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0,top:8),
                                  child: Text(
                                    'This loan type is typically less than \$500 and must be \npaid back by next payday ',
                                    style: TextStyle(
                                        color: Colors.grey.shade500, fontSize: 10),
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoanPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left :22.0, top:15),
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
                                  padding: const EdgeInsets.only(right:83.0),
                                  child: Text(
                                    'Personal Loan',
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0,top:8),
                                  child: Text(
                                    'This loan type typically \$500 or more with \nrepayment plan of 3 months or more',
                                    style: TextStyle(
                                        color: Colors.grey.shade500, fontSize: 10),
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

                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoanPage()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left :22.0, top:15),
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
                                  padding: const EdgeInsets.only(right:120.0),
                                  child: Text(
                                    'Business Loan',
                                    style: TextStyle(fontWeight: FontWeight.bold,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12.0,top:8),
                                  child: Text(
                                    'This loan type is typically for established \nbusiness that have been open for one year or more',
                                    style: TextStyle(
                                        color: Colors.grey.shade500, fontSize: 10),
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


                  Container(
                  padding: EdgeInsets.only(
                      left: 70.0, right: 70.0, top: 20.0),
                    child: Center(
                      child: Text(
                        "Want a chance at some free money enter into one of our contests for a chance to win up to \$100.00 every month",
                        style: TextStyle(
                          color: Colors.grey.shade500,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                           ),
                      ),
                    ),
                  ),
                Container(
                  padding: EdgeInsets.only(
                      left: 70.0,
                      right: 70.0,
                      bottom: 10.0,
                      top: 10.0),
                  child: new RichText(
                    text: new TextSpan(
                      children: [
                        new TextSpan(
                          text: 'Click here to register for our next upcoming contest to win some cash!',
                          style: new TextStyle(color: Colors.blue,fontSize: 7,
                            decoration: TextDecoration.underline,),
                          recognizer:
                          new TapGestureRecognizer()
                            ..onTap = () {
                              launch('https://moneybacknow.net/contest');
                            },
                        ),
                      ],
                    ),
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
