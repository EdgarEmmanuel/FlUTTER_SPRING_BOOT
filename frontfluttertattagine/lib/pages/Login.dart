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
      body: Center(
        child:Container(
          child: Text(
          "LOGIN PAGE"
        ),
      ),
      )
    );
  }

}