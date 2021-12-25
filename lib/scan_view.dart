import 'package:flutter/material.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';

class ScanPage extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<ScanPage> {
  String barcode = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Image.network(
                'https://darimu.garisdesign.com/assets/img/account/qrcode_siapa.png',
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 5,
              margin: EdgeInsets.all(10),
            ),
            RaisedButton(
              child: Text('Scan'),
              onPressed: () async {
                try {
                  String barcode = await BarcodeScanner.scan();
                  setState(() {
                    this.barcode = barcode;
                  });
                } on PlatformException catch (error) {
                  if (error.code == BarcodeScanner.CameraAccessDenied) {
                    setState(() {
                      this.barcode =
                          'Izin kamera tidak diizinkan oleh si pengguna';
                    });
                  } else {
                    setState(() {
                      this.barcode = 'Error: $error';
                    });
                  }
                }
              },
            ),
            Text(
              'Result: $barcode',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
