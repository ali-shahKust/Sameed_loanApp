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
  final GlobalKey _scaffoldKey = new GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  Widget cards(image, title) {
    return GestureDetector(
      onTap: () {
        switch (title) {
         case "Texes":
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoanPage()));
            break;
          case "Loan":
            Navigator.push(context, MaterialPageRoute(builder: (context) => ApplyLoan()));
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
      key: _scaffoldKey,

      backgroundColor: Colors.white,
      body: Builder(builder: (context){
        return SafeArea(
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
                              Scaffold.of(context).openDrawer();
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
        );
      }),
      floatingActionButton: FloatingActionButton(onPressed: () {

      },
        backgroundColor: Constant.appColor,
        child: Icon(Icons.email),
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
//                        decoration: BoxDecoration(
//                            shape: BoxShape.circle,
//                            gradient:
//                            LinearGradient(colors: [active, Colors.white30]),
//                        ),
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