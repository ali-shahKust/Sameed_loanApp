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

  @override
  void initState() {
    super.initState();
  }

  Widget cards(image, title) {
    return GestureDetector(
      onTap: () {
        switch (title) {
         case "Texes":
            Navigator.push(context, MaterialPageRoute(builder: (context) => ApplyLoan()));
            break;
          case "Loan":
            Navigator.push(context, MaterialPageRoute(builder: (context) => loanFaq()));
            break;
          case "Insurance":
            Navigator.push(context, MaterialPageRoute(builder: (context) => QuotePage()));
            break;
          case "Upload Center":
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoanPage()));
            break;
        }
      },
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
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
                height: 80,
              ),
              SizedBox(
                height: 10,
              ),
              Text(title,
                  style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black54)),
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
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20.0),
                        child: IconButton(
                          icon: Icon(Icons.menu, color: Colors.black54,),
                          onPressed: () {

                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 20.0),
                        child: Center(
                          child: Text('Deshboard',
                              style: TextStyle(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black54)),
                        ),
                      ),

                    ],
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.all(26.0),
                  sliver: SliverGrid.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 10,
                    children: <Widget>[
                      cards('images/g1.png', 'Texes'),
                      cards('images/g1.png', 'Loan'),
                      cards('images/g1.png', 'Insurance'),
                      cards(
                          'images/g1.png', 'Upload Center'),
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