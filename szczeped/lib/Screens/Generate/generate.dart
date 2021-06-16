import 'package:flutter/material.dart';
import 'package:szczeped/Screens/Generate/Components/body.dart';

class GeneratePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generated QR Code'),
      ),
      body: GenerateBody(),
    );
  }
}

