import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class ScanBody extends StatefulWidget
{
  @override
  ScanBodyState createState() => ScanBodyState();
}

class ScanBodyState extends State
{
  String qrCode = 'Unknown';

  @override
  Widget build(BuildContext context)
  {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            qrCode,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 75,
          ),
          ElevatedButton(
            onPressed: ()
            {
              final qrCode = FlutterBarcodeScanner.scanBarcode(
                  '#ffffff',
                  'Cancel',
                  true,
                  ScanMode.QR
              ).toString();
              showDialog<void>(
                context: context,
                builder: (BuildContext context)
                {
                  return AlertDialog(
                    content: Text(qrCode),
                  );
                },
              );
              setState(() {
                this.qrCode = qrCode;
              });
            },
            child: Padding(
              padding: EdgeInsets.all(20),
              child: const Text(
                'Scan QR Code',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
