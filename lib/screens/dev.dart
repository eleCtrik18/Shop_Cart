import 'package:flutter/material.dart';

class Dev extends StatefulWidget {
  @override
  _DevState createState() => _DevState();
}

class _DevState extends State<Dev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 1,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.green,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 40.0,
              backgroundImage: AssetImage('assets/images/flash.jpeg'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('Chetan Singh'.toUpperCase()),
            SizedBox(
              height: 15.0,
              width: 200.0,
              child: Divider(
                color: Colors.pink,
              ),
            ),
            Text('Andriod Developer'.toUpperCase()),
            SizedBox(
              height: 10.0,
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.code,
                  color: Colors.pink,
                ),
                title: Text('Github: eleCtrik18'),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10.0),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.pink,
                ),
                title: Text('flutterproject18@gmail.com'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
