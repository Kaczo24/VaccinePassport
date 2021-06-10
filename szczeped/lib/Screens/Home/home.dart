import 'package:flutter/material.dart';
import 'package:szczeped/Screens/Home/Components/body.dart';

class HomePage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: HomeBody(),
    );
  }
}

