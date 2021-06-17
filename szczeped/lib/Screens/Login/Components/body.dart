import 'package:flutter/material.dart';
import 'package:szczeped/Screens/Home/home.dart';
import 'package:http/http.dart' as http;

class LoginBody extends StatelessWidget
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
          Text('Enter login credentials:',
            style: TextStyle(fontSize: 20),
          ),
          Container(
            width: size.width*0.8,
            height: size.height*0.3,
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    hintText: "Your Login",
                  ),
                  controller: loginFieldController,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Your Password",
                  ),
                  controller: passwordFieldController,
                ),
                ElevatedButton(
                  onPressed: () async
                  {
                    final response = await CheckCredentials(loginFieldController.text, passwordFieldController.text);
                    if (response == 'true')
                    {
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context)
                          {
                            return HomePage(loginFieldController.text, passwordFieldController.text);
                          }
                        )
                      );
                    }
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<String> CheckCredentials(String login, String password) async
  {
    final response = await http.get(
      Uri.parse('http://83.11.213.19:3000/checkFor?pesel=${login}&password=${password}'),
    );

    if (response.statusCode == 200) {
      return response.body;
    }
    else {
      throw Exception('Failed to get answer from server');
    }
  }
}