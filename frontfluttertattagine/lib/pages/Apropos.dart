
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Apropos extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(" A PROPOS "),
      ),
      body: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child:  Image.network("https://www.cfp-getech.com/wp-content/uploads/2020/06/Ngor-Seck-Lead-225x300.png",
                    width:100,
                  ),
                ),
              ),
              Expanded(
                  child: Column(
                    children: <Widget>[
                      Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 0.0),
                          child: Text(
                            "NGOR SECK",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 23.0,
                            ),
                          )
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
                          child: Text(
                            "Fondateur du centre de formation professionnelle de Tattaguine Escale",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.0,
                            ),
                          )
                      ),
                    ],
                  )
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text("VISION ET CONTEXTE"),
          )
        ],
      )
    );
  }
}