import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Find extends StatefulWidget {
  @override
  _FindState createState() => _FindState();
}

class _FindState extends State<Find> {
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
      body: Column(children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 16, top: 25, right: 16),
          child: SizedBox(
            child: Text(
              "Find Shops",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
        ),
        SizedBox(
          height: 40,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {
                  _launchMap();
                },
                child: Container(
                  color: Colors.green[300],
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      Text(
                        "Grocery Stores",
                        style: TextStyle(fontSize: 24),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  _launchMeds();
                },
                child: Container(
                  color: Colors.green[300],
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      Text(
                        "Pharmacies",
                        style: TextStyle(fontSize: 24),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  _launchEce();
                },
                child: Container(
                  color: Colors.green[300],
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      Text(
                        "Electronics",
                        style: TextStyle(fontSize: 24),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  _launchFur();
                },
                child: Container(
                  color: Colors.green[300],
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      Text(
                        "Furniture Stores",
                        style: TextStyle(fontSize: 24),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }

  final String lat = "Grocery Stores";
  _launchMap() async {
    final String googleMapsUrl = "comgooglemaps://?center=$lat";
    final String appleMapsUrl = "https://maps.apple.com/?q=$lat";

    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    }
    if (await canLaunch(appleMapsUrl)) {
      await launch(appleMapsUrl, forceSafariVC: false);
    } else {
      throw "Couldn't launch URL";
    }
  }

  final String med = "Medical Stores";
  _launchMeds() async {
    final String googleMapsUrl = "comgooglemaps://?center=$med";
    final String appleMapsUrl = "https://maps.apple.com/?q=$med";

    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    }
    if (await canLaunch(appleMapsUrl)) {
      await launch(appleMapsUrl, forceSafariVC: false);
    } else {
      throw "Couldn't launch URL";
    }
  }

  final String ece = "Electronic Stores";
  _launchEce() async {
    final String googleMapsUrl = "comgooglemaps://?center=$ece";
    final String appleMapsUrl = "https://maps.apple.com/?q=$ece";

    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    }
    if (await canLaunch(appleMapsUrl)) {
      await launch(appleMapsUrl, forceSafariVC: false);
    } else {
      throw "Couldn't launch URL";
    }
  }

  final String fur = "Furniture Stores";
  _launchFur() async {
    final String googleMapsUrl = "comgooglemaps://?center=$fur";
    final String appleMapsUrl = "https://maps.apple.com/?q=$fur";

    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    }
    if (await canLaunch(appleMapsUrl)) {
      await launch(appleMapsUrl, forceSafariVC: false);
    } else {
      throw "Couldn't launch URL";
    }
  }
}
