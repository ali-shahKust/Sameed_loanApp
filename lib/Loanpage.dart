import 'package:flutter/material.dart';
import 'package:sameed_ui/HomePage.dart';
import 'package:sameed_ui/constant.dart';

class LoanPage extends StatefulWidget {
  @override
  _LoanPageState createState() => _LoanPageState();
}

class _LoanPageState extends State<LoanPage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(



      body:

          ListView(
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20.0),
                      child: IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.black54,),
                        onPressed: () {

                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20.0),
                      child: Center(
                        child: Text('Loan Application',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w900,
                                color: Colors.black54)),
                      ),
                    ),

                  ],
                ),
              ),
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(left: 30.0,right: 30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("User Name",style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 22
                    ),),
                    Row(
                      children: <Widget>[
                        Text(
                         'Loan Request Code',style: TextStyle(
                            color: Colors.black26,
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                        ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '#2334',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18
                        ),
                        ),

                      ],
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text("Enter amount",style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                      fontSize: 18
                    ),),
                    Container(
                      height: 40,
                      color: Colors.grey.shade200,
                      child: TextFormField(
                        decoration:  InputDecoration(
                          hintText: "0.0",
                          fillColor: Colors.white70,
                          border:  OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(5.0),
                            borderSide:  BorderSide(
                            ),
                          ),

                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text("Purpose",style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                    Container(
                      height: 40,
                      color: Colors.grey.shade200,
                      child: TextFormField(
                        decoration:  InputDecoration(
                          hintText: "Commercial",
                          fillColor: Colors.white70,
                          border:  OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(5.0),
                            borderSide:  BorderSide(
                            ),
                          ),

                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text("Collateral",style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                    Container(
                      height: 40,
                      color: Colors.grey.shade200,
                      child: TextFormField(
                        decoration:  InputDecoration(
                          hintText: "Automobile",
                          fillColor: Colors.white70,
                          border:  OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(5.0),
                            borderSide:  BorderSide(
                            ),
                          ),

                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text("Market Value",style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                    Container(
                      height: 40,
                      color: Colors.grey.shade200,
                      child: TextFormField(
                        decoration:  InputDecoration(
                          hintText: "0.0",
                          fillColor: Colors.white70,
                          border:  OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(5.0),
                            borderSide:  BorderSide(
                            ),
                          ),

                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2.0,
                    ),
                    Text("Due Date",style: TextStyle(
                        color: Colors.black54,
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 200,
                          color: Colors.grey.shade200,
                          child: TextFormField(
                            decoration:  InputDecoration(
                              hintText: "Dec 30,2020",
                              fillColor: Colors.white70,
                              border:  OutlineInputBorder(
                                borderRadius:  BorderRadius.circular(5.0),
                                borderSide:  BorderSide(
                                ),
                              ),

                            ),
                          ),
                        ),
                        Container(
                          child: IconButton(
                            icon: Icon(Icons.calendar_today, color: Colors.blueAccent,),
                            onPressed: () {

                            },
                          ),
                        )
                      ],
                    ),

                  ],
                ),
              ),
              Container(
                height: 100,
                padding:EdgeInsets.only(left:30.0,right: 30.0,top:20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),

                ),

                child:  MaterialButton(
                  color:Colors.yellow.shade700,
                  elevation: 0,
                  onPressed: () {},
                  child: Container(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Upload Document for Collateral", textAlign: TextAlign.center, style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500
                        ),),
                        IconButton(
                          icon: Icon(Icons.file_upload,color: Colors.white,),
                          onPressed: () {
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),


    );
  }
}

