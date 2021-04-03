import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_cart/screens/grocery.dart';
import 'package:shop_cart/utility/dashboard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Shop",
              style: TextStyle(fontSize: 22, color: Colors.white),
            ),
            Text(
              "Cart",
              style: TextStyle(fontSize: 22, color: Colors.blue),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        elevation: 0.0,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          )
        ],
      ),
      backgroundColor: Colors.black54,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 110,
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Good Morning",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "All your Needs",
                      style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                              color: Color(0xffa29aac),
                              fontSize: 14,
                              fontWeight: FontWeight.w600)),
                    ),
                  ],
                ),
                IconButton(
                  alignment: Alignment.topCenter,
                  icon: Image.asset(
                    "assets/logo/notification.png",
                    width: 24,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Dashboard()
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text(
                'Welcome to ShopCart',
                style: TextStyle(fontSize: 20),
              ),
              //accountEmail: new Text('singhchetan0542@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                child: Image.asset("assets/logo/person.png"),
              ),
              accountEmail: null,
            ),
            // new Container(
            //child: new DrawerHeader(child: new CircleAvatar()),
            //color: Colors.blueAccent,
            // ),
            new Container(
              color: Colors.red[200],
              child: new Column(children: <Widget>[
                new ListTile(
                  title: new Text('Home'),
                  trailing: new Icon(Icons.person),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mobile()));
                  },
                ),
                new Divider(),
                new ListTile(
                  title: new Text('My Orders'),
                  trailing: new Icon(Icons.account_box),
                  onTap: () {},
                ),
                new Divider(),
                new ListTile(
                  title: new Text('My Account'),
                  trailing: new Icon(Icons.person),
                  onTap: () {},
                ),
                new Divider(),
                new ListTile(
                  title: new Text('Find Us'),
                  trailing: new Icon(Icons.location_city),
                  onTap: () {},
                ),
              ]),
            )
          ],
        ),
      ),
    );
  }
}

class Items {
  String title;
  String subtitle;
  String event;
  String img;
  Items({this.title, this.subtitle, this.event, this.img});
}
