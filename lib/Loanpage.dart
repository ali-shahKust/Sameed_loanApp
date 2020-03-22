

import 'package:flutter/cupertino.dart';
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
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left : 18.0),
                      child: Radio(value: 'Personal', groupValue: 'rad', onChanged:null ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:2.0),
                      child: Text('Personal'
                      ,style: TextStyle(
                          fontWeight: FontWeight.bold,
                            fontSize: 16
                        )
                      ),
                    ),
                    Radio(value: Text('Buisness'), groupValue: 'rad', onChanged: null),
                    Padding(
                      padding: const EdgeInsets.only(left:2.0),
                      child: Text('Business'
                          ,style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                          )
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
                    SizedBox(
                      height: 8.0,
                    ),

                    Container(
                      height: 40,
                      color: Colors.grey.shade200,
                      child: TextFormField(
                        decoration:  InputDecoration(
                          hintText: "Name",
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
                      height: 7.0,
                    ),
                    Container(
                      height: 40,
                      color: Colors.grey.shade200,
                      child: TextFormField(
                        decoration:  InputDecoration(
                          hintText: "Email",
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
                      height: 7.0,
                    ),
                    Container(
                      height: 40,
                      color: Colors.grey.shade200,
                      child: TextFormField(
                        decoration:  InputDecoration(
                          hintText: "Best Contact Number",
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
                      height: 7.0,
                    ),
                    Container(
                      height: 40,
                      color: Colors.grey.shade200,
                      child: TextFormField(
                        decoration:  InputDecoration(
                          hintText: "How much money do you need",
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
                      height: 7.0,
                    ),
                    Container(
                      height: 40,
                      color: Colors.grey.shade200,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: buildDropdownButton(['How would you rate your credit','Great (720 and above)','Average  (620-659)','Below Average (580-619)',
                              'Bad (579 and below) '
                              ],'How would you rate your credit')
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Container(
                      height: 40,
                      color: Colors.grey.shade200,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: buildDropEmploye(['Are you currently employed','Yes','No',],'Are you currently employed')
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Container(
                      height: 40,
                      color: Colors.grey.shade200,
                      child: TextFormField(
                        decoration:  InputDecoration(
                          hintText: "What is the name of your employer? ",
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
                      height: 7.0,
                    ),
                    Container(
                      height: 40,
                      color: Colors.grey.shade200,
                      child: TextFormField(
                        decoration:  InputDecoration(
                          hintText: "Do you have a bank account?​",
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
                      height: 7.0,
                    ),
                    Container(
                      height: 40,
                      color: Colors.grey.shade200,
                      child: TextFormField(
                        decoration:  InputDecoration(
                          hintText: "What is your routing number?",
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
                      height: 7.0,
                    ),
                    Container(
                      height: 40,
                      color: Colors.grey.shade200,
                      child: TextFormField(
                        decoration:  InputDecoration(
                          hintText: "What is your account number?",
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
                      height: 7.0,
                    ),
                    Container(
                      height: 40,
                      color: Colors.grey.shade200,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                              child: buildDropReturnLoan(['How soon can you pay back this loan?',
                                '1 week',  '1 month',
                                '3 months', '6 months',
                                '1 year'],'How soon can you pay back this loan?')
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 7.0,
                    ),
                    Container(
                      height: 40,
                      color: Colors.grey.shade200,
                      child: TextFormField(
                        decoration:  InputDecoration(
                          hintText: "Social Security Number",
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
                      height: 7.0,
                    ),
                    Container(
                      height: 40,
                      color: Colors.grey.shade200,
                      child: TextFormField(
                        decoration:  InputDecoration(
                          hintText: "DOB",
                          fillColor: Colors.white70,
                          border:  OutlineInputBorder(
                            borderRadius:  BorderRadius.circular(5.0),
                            borderSide:  BorderSide(
                            ),
                          ),

                        ),
                      ),
                    ),
                    Row(

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

                child:  Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        color:Colors.yellow.shade700,
                        elevation: 0,
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  "Driver’s license ", textAlign: TextAlign.center, style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500
                                ),),
                              ),
                              IconButton(
                                icon: Icon(Icons.file_upload,color: Colors.white,),
                                onPressed: () {
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        color:Colors.yellow.shade700,
                        elevation: 0,
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  "Most recent paystub ", textAlign: TextAlign.center, style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500
                                ),),
                              ),
                              IconButton(
                                icon: Icon(Icons.file_upload,color: Colors.white,),
                                onPressed: () {
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
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
                child:  Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: MaterialButton(
                        color:Colors.yellow.shade700,
                        elevation: 0,
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          child: Row(
                            children: <Widget>[
                              Flexible(
                                child: Text(
                                  "Submit your loan request", textAlign: TextAlign.center, style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500
                                ),),
                              ),
                              IconButton(
                                icon: Icon(Icons.arrow_forward,color: Colors.white,),
                                onPressed: () {
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  height: 260,

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
                  child: Row(
                    children: <Widget>[
                    Flexible(
                      child :Text(
                        "You are applying generally for credit and not for a specific credit product or amount. Any product/amount offered will depend on the credit and underwriting standards of the lender.By clicking “Submit My Loan Request”, you (i) consent to receiving telemarketing calls and messages, including calls using an automatic telephone dialing system, from MoneyBack Now and those acting on its behalf at the telephone number you have provided above (including your cellular phone number); agree that this consent applies even if the number you have provided is currently on any state, federal, or corporate Do-Not-Call registry; and understand that you are not required to provide this consent as a condition of receiving any credit or services from MoneyBack Now and that you may apply for loan by contacting us directly; and (ii) acknowledge that you have read Moneyback Now’s ​Application Agreement​ and ​Privacy Policy​ and understand that you may opt out of receiving communications of your choice from MoneyBack Now as provided in the Privacy Policy"
                      ,style: TextStyle(

                       fontSize: 12,
                        fontWeight: FontWeight.w300
                      ),)
                    )
                  ],
                  ),

                ),
              ),

            ],
          ),
    );
  }
  //Drop Down Menu to get Specific Field Of Items
  Widget buildDropdownButton(List<String> items, String selectedValue) {
    return DropdownButton<String>(
      isExpanded: true,
      value: selectedValue,
      onChanged: (value) {
      },
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  //Drop Down Menu to get Specific Field Of Items
  Widget buildDropEmploye(List<String> items, String selectedValue) {
    return DropdownButton<String>(
      isExpanded: true,
      value: selectedValue,
      onChanged: (value) {
      },
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  //Drop Down Menu to get Specific Field Of Items
  Widget buildDropReturnLoan(List<String> items, String selectedValue) {
    return DropdownButton<String>(
      isExpanded: true,
      value: selectedValue,
      onChanged: (value) {
      },
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(
          width: 3.0
      ),
      borderRadius: BorderRadius.all(
          Radius.circular(5.0) //                 <--- border radius here
      ),
    );
  }
}

