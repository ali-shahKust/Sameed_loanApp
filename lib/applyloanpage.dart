import 'package:flutter/material.dart';
import 'package:sameed_ui/HomePage.dart';
import 'package:sameed_ui/constant.dart';

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

//  Widget cards(image, title) {
//    return GestureDetector(
//      onTap: () {
//        switch (title) {
//          case "Business Loan":
//            Navigator.push(context, MaterialPageRoute(builder: (context) => LoanPage()));
//            break;
//          case "PayDay Loan":
//            break;
//          case "Flex Loan":
//            Navigator.push(context, MaterialPageRoute(builder: (context) => LoanPage()));
//            break;
//          case "Instalment Loan":
//            Navigator.push(context, MaterialPageRoute(builder: (context) => LoanPage()));
//            break;
//        }
//      },
//      child: Container(
//        height: 200,
//        width: 200,
//        decoration: BoxDecoration(
//          borderRadius: BorderRadius.circular(10),
//          boxShadow: [
//            BoxShadow(
//              color: Colors.grey,
//              blurRadius: 6.0,
//            ),
//          ],
//          color: Colors.white,
//        ),
//        child: Center(
//          child: Column(
//            mainAxisAlignment: MainAxisAlignment.center,
//            children: <Widget>[
//
//              Image.asset(
//                image,
//                height: 50,
//              ),
//              SizedBox(
//                height: 10,
//              ),
//              Text(title,
//                  style: TextStyle(fontWeight: FontWeight.bold,
//                      fontSize: 18,
//                      color: Constant.appColor)),
//            ],
//          ),
//        ),
//      ),
//    );
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _key,
      body: SafeArea(
        child: Stack(
          children: <Widget>[

            CustomScrollView(
              slivers: <Widget>[
                SliverToBoxAdapter(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20.0),
                            child: IconButton(
                              icon: Icon(Icons.list, color: Colors.black54,),
                              onPressed: () {
                                _key.currentState.openDrawer();
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20.0),
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
                        padding: const EdgeInsets.only(left: 30,right: 30,bottom: 10,top: 10),
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
                                padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
                                child: Center(
                                  child: Text("Loan on Cash? Get a quick loan decision", style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54

                                  ),),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0,top: 10.0),
                                child: Text(
                                  "Mauris congue luctus neque, in semper purus maximus iaculis. Donec et eleifend quam, a sollicitudin magna.",
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      color: Colors.grey.shade600
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                SliverPadding(

                  padding: const EdgeInsets.all(40.0),
                  sliver: SliverGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 10,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoanPage()));

                        },
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300 , width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text('PayDay Loan',style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 8,),
                              Text('Typically \$500 or less and loan must be paid back by next payday ',style: TextStyle(
                                color: Colors.green
                              ),),
                              Image.asset('images/g2.png', width: 40,height: 40,),

                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoanPage()));
                        },
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300 , width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text('Personal Loan',style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 8,),
                              Text(' Typically more than \$500 with a term repayment plan ',style: TextStyle(
                                  color: Colors.green
                              ),),SizedBox(height: 18,),
                              Image.asset('images/g3.png', width: 40,height: 40,),

                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoanPage()));

    },
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300 , width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text('Instalment Loan',style: TextStyle(
    fontWeight: FontWeight.bold
    ),),
                              SizedBox(height: 8,),
                              Text('Typically \$500 or less and loan must be paid back by next payday ',style: TextStyle(
                                  color: Colors.green
                              ),),
                              SizedBox(height: 5,),
                              Image.asset('images/g4.png', width: 40,height: 40,),

                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoanPage()));

                        },
                        child: Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey.shade300 , width: 1),
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Column(
                            children: <Widget>[
                              Text('Business Loan',style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),),
                              SizedBox(height: 10,),
                              Text('This is a term loan for business owners with an established business ',style: TextStyle(
                                  color: Colors.green
                              ),),
                              Image.asset('images/g5.png', width: 40,height: 40,),

                            ],
                          ),
                        ),
                      ),
                    ],
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
                            backgroundImage: AssetImage('images/profile.png')

                        ),
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
                  leading : Icon(Icons.dashboard),
                  title:Text("DashBoard"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading : Icon(Icons.account_box),
                  title: Text("Profile"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading : Icon(Icons.calendar_today),

                  title: Text("Upload Center"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                Divider(color: Colors.black45,
                  height: 30,
                  thickness: .2,
                ),
                ListTile(
                  title: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("Other"),
                  ),
                  onTap: () {
                  },
                ),
                ListTile(
                  leading : Icon(Icons.not_listed_location),
                  title: Text("FAQ"),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => loanFaq()));
                  },
                ),
                ListTile(
                  leading : Icon(Icons.email),
                  title: Text("SUPPORT"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading : Icon(Icons.exit_to_app),
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