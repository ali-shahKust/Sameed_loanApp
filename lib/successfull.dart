import 'package:flutter/material.dart';

class Successfull_page extends StatefulWidget {
  @override
  _Successfull_pageState createState() => _Successfull_pageState();
}

class _Successfull_pageState extends State<Successfull_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top:100, left : 40, right: 40),
              child: Center(child: Text('Your application is on it’s way  Please give us up too two business days to process your request '),
              ),
            ),
            SizedBox(height: 15,),
            Text('Your Application # 12223',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22
            ),),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left:30.0, right: 30),
              child: Text('Please call us (844-572-2955) at with your application number if you have further questions in regards to your application ',style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16
              ),),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.only(left :30.0, right: 30),
              child: Text('Your next step is to just wait for your approval or denial that we will send to the email you provided in your application',style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16
              ),),
            ),
          ],
        ),
      ),
    );
  }
}
