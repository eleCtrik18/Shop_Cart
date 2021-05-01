import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                side: new BorderSide(color: Colors.blue, width: 2.0),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.code,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: _launchGithub,
                      child: Text(
                        'GitHub: eleCtrik18',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                side: new BorderSide(color: Colors.blue, width: 2.0),
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.email_outlined,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: _launchEmail,
                      child: Text(
                        'flutterproject18@gmail.com',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _launchEmail() async {
    launch(
        "mailto:flutterproject18@gmail.com?subject=Regarding App&body=Hello...%20plugin");
  }

  _launchGithub() async {
    const url = 'https://github.com/eleCtrik18';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
