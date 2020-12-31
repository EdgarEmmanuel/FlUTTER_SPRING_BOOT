import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() {
    return _Login();
  }
}

  class _Login extends State<Login>{
    String password="";
    String login="";

  @override
  Widget build(BuildContext context) {

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
           onChanged: (value)=>{
            setState(()=> {
                this.login=value
              }
            )
           },
         ),
          TextField(
            decoration: InputDecoration(
              hintText: "Password"
            ),
            onChanged: (value)=>{
              setState(
                  ()=>{
                    this.password=value
                  }
              )
            },
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