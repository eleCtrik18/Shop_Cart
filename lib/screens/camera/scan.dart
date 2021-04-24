import 'dart:async';

import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Scan extends StatefulWidget {
  @override
  _ScanState createState() => _ScanState();
}

class _ScanState extends State<Scan> {
  String result = "Hey there !";

  Future _scanQR() async {
    try {
      String qrResult = await BarcodeScanner.scan();
      setState(() {
        result = qrResult;
      });
    } on PlatformException catch (ex) {
      if (ex.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          result = "Camera permission was denied";
        });
      } else {
        setState(() {
          result = "Unknown Error $ex";
        });
      }
    } on FormatException {
      setState(() {
        result = "You pressed the back button before scanning anything";
      });
    } catch (ex) {
      setState(() {
        result = "Unknown Error $ex";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Scan",
                style: TextStyle(fontSize: 22, color: Colors.blue),
              ),
              Text(
                "",
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
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt_sharp),
                  color: Colors.green[200],
                )),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                onPressed: _scanQR,
                child: Container(
                  color: Colors.red[300],
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      Text(
                        "Scan QR or BarCode",
                        style: TextStyle(fontSize: 24),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
