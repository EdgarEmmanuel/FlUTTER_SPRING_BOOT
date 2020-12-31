import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child:Text(
          "LOGIN",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.orange
          ),
        ),
      ),
        backgroundColor: Color(0xff3b8391),
      ),
      body: Column(
        children: <Widget>[
         TextField(
          decoration: InputDecoration(
            hintText: "Login"
          ),
         ),
          TextField(
            decoration: InputDecoration(
              hintText: "Password"
            ),
          ),
          RaisedButton(
            child: Text(
              "Se connecter"
            ),
            color: Colors.orange,
            hoverColor: Colors.orange,
          ),
        ],
      )
    );
  }

}