import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontfluttertattagine/pagedaccueil.dart';

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
      body:Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Image.network("https://i.pinimg.com/originals/e6/e2/2c/e6e22cb12f950282195a4ca8366eaaeb.gif"),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "LES INFORMATIONS CONCERNANT CE DEPARTEMENT SONT POUR LE MOMENT INDISPONIBLES",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: RaisedButton(
              child: Text(
                "RETOUR",
              ),
              onPressed: ()=>{
                Navigator.pop(context),
                Navigator.push(context,MaterialPageRoute(
                  builder: (context) => AccueilPage()
                ))
              },
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text("ABOUT US"),
          ),
          BottomNavigationBarItem(
            icon:Icon(Icons.wc),
            title: Text("OUR GOAL")
          )
        ],
      ),
    );
  }

}