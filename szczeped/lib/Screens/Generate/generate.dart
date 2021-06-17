import 'package:flutter/material.dart';
import 'package:szczeped/Screens/Generate/Components/body.dart';

class GeneratePage extends StatelessWidget
{
  late String login;
  late String password;

  GeneratePage(String login, String password)
  {
    this.login = login;
    this.password = password;
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generated QR Code'),
      ),
      body: GenerateBody(login, password),
    );
  }
}

