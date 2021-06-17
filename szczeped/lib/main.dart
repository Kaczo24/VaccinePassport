// @dart=2.9

//set path=%path%;c:\src\flutter\flutter\bin;

import 'package:flutter/material.dart';
import 'package:szczeped/Screens/Login/login.dart';

import 'dart:io';
import 'package:http/http.dart' as http;


void main()
{
  //HttpOverrides.global = new MyHttpOverrides();
  HttpOverrides.global = new DevHttpOverrides();

  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Szczeped',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

//HttpClient client = HttpClient()
//  ..badCertificateCallback = ((X509Certificate cert, String host, int port) => true);

//class MyHttpOverrides extends HttpOverrides{
//  @override
//  HttpClient createHttpClient(SecurityContext context){
//    return super.createHttpClient(context)
//      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
//  }
//}

class DevHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}


