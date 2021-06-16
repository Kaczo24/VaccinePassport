import 'package:flutter/material.dart';
import 'package:szczeped/Screens/Generate/generate.dart';
import 'package:szczeped/Screens/Scan/scan.dart';

class HomeBody extends StatelessWidget
{
  final loginFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: ()
            {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context)
                      {
                        return GeneratePage();
                      }
                  )
              );
            },
            child: Padding(
              padding: EdgeInsets.all(50),
              child: const Text(
                'Generate QR Code',
                style: TextStyle(fontSize: 30),
              ),
            ),
          ),
          Container(
            width: 100,
            height: 100,
          ),
          ElevatedButton(
            onPressed: ()
            {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context)
                      {
                        return ScanPage();
                      }
                  )
              );
            },
            child: Padding(
              padding: EdgeInsets.all(50),
              child: const Text(
                'Scan QR Code',
                style: TextStyle(fontSize: 30),
              ),
            )
          ),
        ],
      ),
    );
  }
}