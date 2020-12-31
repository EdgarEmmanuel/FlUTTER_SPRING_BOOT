import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Industrie extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "METIERS DE L'INDUSTRIE",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color:Colors.orange
            ),
          ),
        ),
        backgroundColor: Color(0xff3b8391),
      ),
    );
  }

}