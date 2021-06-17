import 'package:flutter/material.dart';
import 'package:szczeped/Screens/Home/Components/body.dart';

class HomePage extends StatelessWidget
{
  late String login;
  late String password;

  HomePage(String login, String password)
  {
    this.login = login;
    this.password = password;
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: HomeBody(login, password),
    );
  }
}

