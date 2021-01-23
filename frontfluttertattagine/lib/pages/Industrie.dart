import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:frontfluttertattagine/pagedaccueil.dart';

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
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Container(
              child: Image.network("https://visme.co/blog/wp-content/uploads/2020/02/header-1200.gif"),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "DESOLE CHERS UTILISATEURS LES INFORMATIONS POUR CE DEPARTEMENT N'EST PAS ENCORE DISPONIBLE",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22.0,
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
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => AccueilPage()
                ))
              },
            )
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
        )
    );
  }

}