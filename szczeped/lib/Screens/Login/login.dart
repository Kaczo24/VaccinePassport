import 'package:flutter/material.dart';
import 'package:szczeped/Screens/Login/Components/body.dart';

class LoginPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Szczeped'),
      ),
      body: LoginBody(),
    );
  }
}

