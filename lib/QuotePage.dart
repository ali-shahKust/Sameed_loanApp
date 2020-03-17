import 'package:flutter/material.dart';
import 'package:sameed_ui/HomePage.dart';
import 'package:sameed_ui/constant.dart';

class QuotePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ListView(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.only(top:70.0),
                child: Container(child: Image.asset('images/5.jpg')),
              ),

              Container(
                padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 20.0),
                child: Center(
                  child: Text("Simple and Fair term Everywhere", style: TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w500,
                    color: Colors.black54

                  ),),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0,top: 30.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dignissim erat in accumsan tempus. Mauris congue luctus neque, in semper purus maximus iaculis. Donec et eleifend quam, a sollicitudin magna.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.grey.shade600
                  ),
                ),
              ),
              Container(
               padding:EdgeInsets.only(left:30.0,right: 30.0,top:20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child:  MaterialButton(
                  color:Constant.appColor,
                  elevation: 0,
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(
                      "Apply for a Loan", textAlign: TextAlign.center, style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w500
                    ),),
                  ),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              AppBar(
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back), onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoanHomePage()));
                  },
                  color: Colors.white,)
                ],
                iconTheme: IconThemeData(
                    color: Colors.black54
                ),
                brightness: Brightness.light,
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Text(
                  "Get Insurance Quote", style: TextStyle(color: Colors.black54),),

              ),

            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

      },
        backgroundColor: Constant.appColor,
        child: Icon(Icons.email),
      ),
    );
  }
}
