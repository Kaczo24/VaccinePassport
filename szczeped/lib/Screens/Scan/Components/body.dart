import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:http/http.dart' as http;


class ScanBody extends StatefulWidget
{
  @override
  ScanBodyState createState() => ScanBodyState();
}

class ScanBodyState extends State
{
  bool result = false;
  String qrCode = 'Not Scanned';
  String date = '';

  @override
  Widget build(BuildContext context)
  {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            result.toString(),
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 75,
          ),
          ElevatedButton(
            onPressed: () => StartQRScan(),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: const Text(
                'Scan QR Code',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          AlertDialog(
            title: const Text('Check'),
            content: Text(result.toString() + '\n' + date),
          ),
        ],
      ),
    );
  }

  Future<void> StartQRScan() async
  {
    final qrCode = await FlutterBarcodeScanner.scanBarcode(
        '#ffffff',
        'Cancel',
        true,
        ScanMode.QR
    );
    final response = await http.get(
        Uri.parse('http://83.11.213.19:3000/app/checkCode?code=${qrCode}'),
    );

    if (response.statusCode == 200)
    {
      setState(() {
        debugPrint(response.body);
        debugPrint(json.decode(response.body).toString());
        this.result = json.decode(response.body)["exists"];
        this.date = json.decode(response.body)["date"];
        this.qrCode = qrCode;
        debugPrint(result.toString());
        debugPrint(date.toString());
      });
    }
    else
    {
      throw Exception('Failed to get answer from server');
    }


  }
}
