import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget
{
  final loginFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();

  @override
  Widget build(BuildContext context)
  {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            onPressed: (){
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    // Retrieve the text the user has entered by using the
                    // TextEditingController.
                    content: Text("Clicked Bitch!"),
                  );
                },
              );
            },
            child: const Text(
              'Generate QR Code',
              style: TextStyle(fontSize: 30),
            ),
          ),
          ElevatedButton(
            onPressed: (){
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    // Retrieve the text the user has entered by using the
                    // TextEditingController.
                    content: Text("Clicked Bitch!"),
                  );
                },
              );
            },
            child: const Text(
                'Scan QR Code',
                style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}