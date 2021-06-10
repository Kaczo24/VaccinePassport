import 'package:flutter/material.dart';
import 'package:szczeped/Screens/Home/home.dart';

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
                  onPressed: (){
                    if(loginFieldController.text != '' && passwordFieldController.text != '')
                      {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)
                                {
                                  return HomePage();
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
}