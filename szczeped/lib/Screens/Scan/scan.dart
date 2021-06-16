import 'package:flutter/material.dart';
import 'package:szczeped/Screens/Scan/Components/body.dart';

class ScanPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan QR Code'),
      ),
      body: ScanBody(),
    );
  }
}

