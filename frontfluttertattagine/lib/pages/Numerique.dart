import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Numerique extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "METIERS DU NUMERIQUE",
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
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Image.network(""),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              ""
            ),
          )
        ],
      ),
    );
  }

}