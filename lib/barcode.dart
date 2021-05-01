import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class barmain extends StatefulWidget {
  @override
  _barmainState createState() => _barmainState();
}

class _barmainState extends State<barmain> {
  String result;
  Future _scanQR() async {
    try {
      String cameraScanResult = await scanner.scan();

      await setState(() {
        result = cameraScanResult;
        // setting string result with cameraScanResult
      });
      _launchInBrowser(result);
    } on PlatformException catch (e) {
      // log(e);
      log(e.toString());
    }
  }

  Future _scanQRGallery() async {
    try {
      String cameraScanResult = await scanner.scanPhoto();

      await setState(() {
        result = cameraScanResult;
        // setting string result with cameraScanResult
      });
      _launchInBrowser(result);
    } on PlatformException catch (e) {
      // log(e);
      log(e.toString());
    }
  }

  Future<void> _launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      // throw 'Could not launch $url';
      // log("Couldn't Launch");
      Widget okButton = TextButton(
        child: Text(
          "OK",
          style: TextStyle(color: Colors.white, fontFamily: "Philosopher"),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      );
      AlertDialog alert = AlertDialog(
        backgroundColor: Color(0xFF243b55),
        title: Text(
          "Scanned Data",
          style: TextStyle(color: Colors.white, fontFamily: "Philosopher"),
        ),
        content: Text(result.toString(),
            style: TextStyle(color: Colors.white, fontFamily: "Philosopher")),
        actions: [
          okButton,
        ],
      );

      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }
  }

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
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 16, top: 25, right: 16),
            child: SizedBox(
              child: Text(
                "QR Scanner",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
              ),
            ),
          ),
          Container(
            child: Card(
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
                      Column(
                        children: [
                          Text(
                              'If Camera is not working, go to settings of your phone'),
                          Text('and allow Camera Permissions Manually!!')
                        ],
                      ),
                    ],
                  ),
                )),
          ),
          SizedBox(height: MediaQuery.of(context).size.height / 9),
          // Center(
          //     child: GestureDetector(
          //         onTap: () {},
          //         child: Hero(
          //             tag: "generate",
          //             child: Container(
          //                 decoration: BoxDecoration(),
          //                 height: MediaQuery.of(context).size.height / 4,
          //                 width: MediaQuery.of(context).size.width / 1.5,
          //                 child: Card(
          //                     color: Colors.black45,
          //                     shape: RoundedRectangleBorder(
          //                       borderRadius: BorderRadius.circular(25.0),
          //                     ),
          //                     elevation: 10,
          //                     child: Center(
          //                       child: Text(
          //                         "Generate",
          //                         style: TextStyle(
          //                             fontSize: 30,
          //                             color: Colors.white,
          //                             fontFamily: "Philosopher"),
          //                       ),
          //                     )))))),
          SizedBox(height: MediaQuery.of(context).size.height / 19),
          Center(
            child: GestureDetector(
                onTap: () {
                  AlertDialog alert = AlertDialog(
                    backgroundColor: Colors.white,
                    title: Text(
                      "Select Type",
                      style: TextStyle(
                          color: Colors.black, fontFamily: "Philosopher"),
                    ),
                    content: Container(
                      height: MediaQuery.of(context).size.height / 8,
                      child: Column(
                        children: [
                          GestureDetector(
                              onTap: () {
                                _scanQR();
                                Navigator.pop(context);
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.camera,
                                    size: 30,
                                    color: Colors.black,
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    "Camera",
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.black,
                                        fontFamily: "Philosopher"),
                                  )
                                ],
                              )),
                          SizedBox(height: 20),
                          GestureDetector(
                              onTap: () {
                                _scanQRGallery();
                                Navigator.pop(context);
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.image,
                                    color: Colors.black,
                                    size: 30,
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    "Gallery",
                                    style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.black,
                                        fontFamily: "Philosopher"),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  );

                  // show the dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return alert;
                    },
                  );
                },
                child: Container(
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: Card(
                        color: Colors.black45,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        elevation: 10,
                        child: Center(
                          child: Text(
                            "Scan",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontFamily: "Philosopher"),
                          ),
                        )))),
          ),
        ],
      ),
    );
  }
}
