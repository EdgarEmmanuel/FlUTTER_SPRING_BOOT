
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
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
                      width: 170.0,
                    ),
                  ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "MAINTENANCE INFORMATIQUE",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.asset(
                            "images/goal.jpg",
                            width: 10.0,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "OBJECTIFS GENERAUX",
                            style: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    )
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.bookmark_border),
                        title: Text(
                          "Savoir Installer, dépanner et entretenir des équipements informatiques "
                              "ou bureautiques (matériels, logiciels ou réseaux)"
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.bookmark_border),
                        title: Text(
                            "Assembler un équipement"
                        ),
                      ),
                      ListTile(
                        leading: Icon(Icons.bookmark_border),
                        title: Text(
                            "Assister les utilisateurs"
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: Image.asset(
                            "images/goal.jpg",
                            width: 10.0,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "CCOMPETENCES VISEES",
                            style: TextStyle(
                                fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    )
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}