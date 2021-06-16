import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';

class GenerateBody extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Image(image: AssetImage('lib/assets/images/exampleQR.png')),
          BarcodeWidget(
              data: 'Enter hash here',
              barcode: Barcode.qrCode(),
          ),
        ],
      ),
    );
  }
}