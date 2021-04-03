import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  @override
  _MobileState createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Grocery",
              style: TextStyle(fontSize: 22, color: Colors.red),
            ),
            Text(
              "Store",
              style: TextStyle(fontSize: 22, color: Colors.blue),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        elevation: 0.0,
        actions: <Widget>[
          //Container(
          //padding: EdgeInsets.symmetric(horizontal: 16),
          //child: IconButton(onPressed: () {}, icon: Icon(Icons.cart)),
          // )
        ],
      ),
    );
  }
}
