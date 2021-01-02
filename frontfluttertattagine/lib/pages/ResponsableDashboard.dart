import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ResponsableDashboard extends StatefulWidget{

  String login="";
  String password="";
  ResponsableDashboard(String login , String password){
    this.password = login;
  }

  @override
  State<ResponsableDashboard> createState() {
    return __Respo();
  }

}


class __Respo extends State<ResponsableDashboard>{

  var ResponsableData;

  @override
  void initState() {
    super.initState();
    login_of_user(widget.password , widget.login);
  }

   login_of_user(String password,String login)async{
      String url = "http://192.168.1.6:9000/login_respo";

      //create the form data
      var body = {
        'email':login,
        'password':password
      };

      await http.post(url,
          headers: {
            "Accept": "application/json",
            "Content-Type": "application/x-www-form-urlencoded"
          },
        body: json.encode(body),
        encoding: Encoding.getByName('utf-8')
      ).then((value) => {
        print("value => "+value.body.toString())
      }).catchError((err)=>{
        print("error => "+err.toString())
      });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "DASHBOARD"
          ),
        ),
      ),
    );
  }

}
