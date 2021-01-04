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
      String url = "http://192.168.1.44:9000/login_respo";

      Map<String,String> form_data = {
        "email":login,
        "password":password
      };

       await http.post(url,
          headers: {
            "Content-Type": "multipart/form-data",
            'Accept': 'application/json'
          },
        body: form_data,
        //encoding: Encoding.getByName('utf-8')
      ).then((value) {
        if(value.body.isNotEmpty){
          print(value.body);
          this.ResponsableData = json.decode(value.body);
        }else{
          print("an error occured");
        }

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
