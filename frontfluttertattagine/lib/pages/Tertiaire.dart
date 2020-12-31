import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Tertaire extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "METIERS DU TERTIARE",
            style: TextStyle(
              color: Colors.orange,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
        backgroundColor: Color(0xff3b8391),
      ),
    );
  }

}