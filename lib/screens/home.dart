import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_cart/screens/account.dart';

import 'package:shop_cart/screens/camera/scan.dart';
import 'package:shop_cart/screens/dev.dart';
import 'package:shop_cart/screens/find.dart';

import 'package:shop_cart/screens/grocery.dart';
import 'package:shop_cart/screens/meds.dart';
import 'package:shop_cart/screens/orders.dart';
import 'package:shop_cart/screens/test.dart';
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
        backgroundColor: Colors.green[200],
        elevation: 0.0,
        actions: <Widget>[
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Scan()));
                },
                icon: Icon(Icons.camera_alt_sharp),
              )),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 22, bottom: 26),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: (20),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: (20),
                vertical: (15),
              ),
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                color: Color(0xff4A3298),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text.rich(TextSpan(
                  text: "Super Summer Sale\n",
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                        text: "50% Cashback",
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.w200))
                  ])),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 36),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GroceryPage()));
                    },
                    child: SizedBox(
                      width: 55,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFECDF),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ImageIcon(
                                      AssetImage('assets/images/grocery.png'))),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: const SizedBox(
                              height: 5,
                            ),
                          ),
                          Text(
                            'Grocery',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MedsPage()));
                    },
                    child: SizedBox(
                      width: 55,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFECDF),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ImageIcon(
                                      AssetImage('assets/images/mask.png'))),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: const SizedBox(
                              height: 5,
                            ),
                          ),
                          Text(
                            'Meds',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: 55,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFECDF),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ImageIcon(AssetImage(
                                      'assets/images/appliance.png'))),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: const SizedBox(
                              height: 5,
                            ),
                          ),
                          Text(
                            'T.V/A.C',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: 55,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFECDF),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ImageIcon(
                                      AssetImage('assets/images/fashion.png'))),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: const SizedBox(
                              height: 5,
                            ),
                          ),
                          Text(
                            'Fashion',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(8)),
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      width: 55,
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: AspectRatio(
                              aspectRatio: 1,
                              child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                      color: Color(0xFFFFECDF),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: ImageIcon(AssetImage(
                                      'assets/images/furniture.png'))),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: const SizedBox(
                              height: 5,
                            ),
                          ),
                          Text(
                            'Sofa',
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16, top: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Wear Mask, Be Safe",
                        style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                                color: Colors.black,
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
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            Container(
              child: new UserAccountsDrawerHeader(
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
            ),
            // new Container(
            //child: new DrawerHeader(child: new CircleAvatar()),
            //color: Colors.blueAccent,
            // ),
            new Container(
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(18),
                  topRight: Radius.circular(18),
                  bottomRight: Radius.circular(18),
                  bottomLeft: Radius.circular(18),
                ),
              ),
              child: new Column(children: <Widget>[
                new ListTile(
                  title: new Text('Dev'),
                  trailing: new Icon(Icons.person),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dev()));
                  },
                ),
                new Divider(),
                new ListTile(
                  title: new Text('My Orders'),
                  trailing: new Icon(Icons.shopping_bag_sharp),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => OrdersPage()));
                  },
                ),
                new Divider(),
                new ListTile(
                  title: new Text('My Account'),
                  trailing: new Icon(Icons.account_balance),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingsPage()));
                  },
                ),
                new Divider(),
                new ListTile(
                  title: new Text('Find Us'),
                  trailing: new Icon(Icons.location_city),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Find()));
                  },
                ),
                new Divider(),
                new ListTile(
                  title: new Text('Chat with Us'),
                  trailing: new Icon(Icons.message),
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
