
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';


class Maintenance extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("MAINTENANCE INFORMATIQUE"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child:Image.asset(
                        "images/maintenance.png",
                      width: 220.0,
                    ),
                  ),
              ],
            )
          ],
        ),
      ),
    );
  }
}