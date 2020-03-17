import 'package:flutter/material.dart';
import 'package:sameed_ui/HomePage.dart';
import 'package:sameed_ui/constant.dart';

class loanFaq extends StatelessWidget {
  final primary =Constant.appColor;
  final secondary = Constant.appColor;
  final List<Map> LawyerList = [
    {
      "name": "Jenny",
    },
    {
      "name": "charlys",
    },
    {
      "name": "Kinder Garden",
    },
    {
      "name": "angela",
    },
  ];
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
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20.0),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.black54,
                              ),
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoanHomePage()));
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20.0),
                            child: Center(
                              child: Text('FAQ',
                                  style: TextStyle(
                                      fontSize: 32,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black54)),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          child: Text("Frequently Ask Question and Answer",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w400))),
                      Container(
                        padding: EdgeInsets.only(
                            left: 20.0, right: 20.0, bottom: 10.0),
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit.Donec et eleifend quam, a sollicitudin magna.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        height: MediaQuery.of(context).size.height,
                        width: double.infinity,
                        child: ListView.builder(
                            itemCount: LawyerList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return buildList(context, index);
                            }),
                      ),
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

  Widget buildDropdownButton(List<String> items, String selectedValue) {
    return DropdownButton<String>(
      isExpanded: true,
      value: selectedValue,
      onChanged: (_) {},
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value, style: TextStyle(
              fontSize: 22.0, fontWeight: FontWeight.bold,
              color: Color(0xFF006600)),
          ),
        );
      }).toList(),
    );
  }

  Widget buildList(BuildContext context, int index) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      width: double.infinity,
      height: 70,

      margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        children: <Widget>[
          Expanded(
              child:
              buildDropdownButton(['how to get a loan','Credit unions. A personal loan from a credit union might be a better option than a personal loan from a bank.'], 'how to get a loan')),
        ]
      ),
    );
  }
}
