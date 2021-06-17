import 'dart:convert';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class GenerateBody extends StatefulWidget
{
  late String login;
  late String password;

  GenerateBody(String login, String password)
  {
    this.login = login;
    this.password = password;
  }

  GenerateBodyState createState() => GenerateBodyState(login, password);
}

class GenerateBodyState extends State
{
  late String login;
  late String password;

  String qrCode = '';

  GenerateBodyState(String login, String password)
  {
    this.login = login;
    this.password = password;
    GenerateQR(login, password);
  }

  @override
  Widget build(BuildContext context)
  {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BarcodeWidget(
            data: qrCode,
            barcode: Barcode.qrCode(),
          ),
        ],
      ),
    );
  }

  Future<void> GenerateQR(String login, String password) async
  {
    final response = await http.get(
        Uri.parse('http://83.11.213.19:3000/app/genCode?pesel=${login}&password=${password}'),
    );

    if (response.statusCode == 200)
    {
      setState(() {
        this.qrCode = response.body;
        debugPrint(this.qrCode);
      });
    }
    else
    {
      throw Exception('Failed to get answer from server');
    }

  }
}
