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

  login_of_user(String password,String login){
      String url = "http://192.168.1.6:9000/login_respo";
      http.post(url,
          headers:<String,String>{
            'Content-Type':'application/x-www-urlencoded'
          },
        body:<String,String>{
            'email':widget.login,
            'password':widget.password
        }
          ).then((value) => {
            null
      }).catchError((onError)=>{
        null
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
