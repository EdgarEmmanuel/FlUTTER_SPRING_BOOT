import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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

  @override
  void initState() {
    super.initState();
    login_of_user(widget.password , widget.login);
  }

  login_of_user(String password,String login){

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
