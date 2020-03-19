import 'package:flutter/material.dart';
import 'package:sameed_ui/HomePage.dart';
import 'package:sameed_ui/constant.dart';

import 'Loanpage.dart';


class ApplyLoan extends StatefulWidget {
  @override
  _ApplyLoanState createState() => _ApplyLoanState();
}

class _ApplyLoanState extends State<ApplyLoan> {
  Color active = Constant.appColor;
  Color primary = Constant.appColor;

  @override
  void initState() {
    super.initState();
  }

  Widget cards(image, title) {
    return GestureDetector(
      onTap: () {
        switch (title) {
          case "BussinessLoan":
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoanPage()));
            break;
          case "PayDayLoan":
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoanPage()));
            break;
          case "FlexLoan":
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoanPage()));
            break;
          case "InstalmentLoan":
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoanPage()));
            break;
        }
      },
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 6.0,
            ),
          ],
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              Image.asset(
                image,
                height: 50,
              ),
              SizedBox(
                height: 10,
              ),
              Text(title,
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Constant.appColor)),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                              icon: Icon(Icons.arrow_back, color: Colors.black54,),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => LoanHomePage()));
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
                      cards('images/g5.png', 'BussinessLoan'),
                      cards('images/g2.png', 'PayDayLoan'),
                      cards('images/g3.png', 'FlexLoan'),
                      cards(
                          'images/g4.png', 'InstalmentLoan'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

      },
        backgroundColor: Constant.appColor,
        child: Icon(Icons.email),
      ),
    );
  }


}