import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:frontfluttertattagine/pages/Gestion.dart';
import 'package:frontfluttertattagine/pages/Industrie.dart';
import 'package:frontfluttertattagine/pages/Login.dart';
import 'package:frontfluttertattagine/pages/Numerique.dart';
import 'package:frontfluttertattagine/pages/Tertiaire.dart';

class AccueilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child:Text("CFP-GETECH",
              style: TextStyle(
                color: Colors.orange,
                fontFamily: 'times New Roman',
                fontSize: 32,
                fontWeight: FontWeight.bold
        )),
        )
      ),
      body:SingleChildScrollView(
        child:Column(
          verticalDirection:VerticalDirection.down ,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children:<Widget>[
                    Image.network("https://image.freepik.com/vecteurs-libre/coeur-metier-numerique_1258-3185.jpg",
                    ),
                  RaisedButton(
                      color: Color(0xff3b8391),
                    child: Text(
                      "METIERS DU NUMERIQUE",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    hoverColor: Colors.orange,
                    onPressed: ()=>{
                        Navigator.pop(context),
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Numerique()
                      )),
                    },
                  )
                ],
              ),
            ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child:Column(
              children:<Widget>[
                Image.network("https://d2oc3pyolp0fbe.cloudfront.net/local/cache-gd2/5388043ae65f5890a8e983117b68d43f.jpg",),
                RaisedButton(
                  color: Color(0xff3b8391),
                  child: Text(
                    "METIES DE L'INDUSTRIE",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  hoverColor: Colors.orange,
                  onPressed: ()=>{
                    Navigator.pop(context),
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Industrie()
                    )),
                  },
                )
              ],
          ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child:Column(
              children : <Widget>[
                Image.network("https://www.salarysolution.be/wp-content/uploads/2018/04/annonce.jpg",),
                RaisedButton(
                  color: Color(0xff3b8391),
                  child: Text(
                    "METIERS DE LA GESTION",
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  hoverColor: Colors.orange,
                  onPressed: ()=>{
                    Navigator.pop(context),
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => Gestion()
                    )),
                  },
                )
              ],
            )
          ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Image.network("https://www.mutuelle-autoentrepreneur.fr/img/multiactivite.jpg"),
                  RaisedButton(
                    color: Color(0xff3b8391),
                    child: Text(
                      "METIERS DU TERTIAIRE",
                      style: TextStyle(
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    hoverColor: Colors.orange,
                    onPressed: ()=>{
                      Navigator.pop(context),
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => Tertaire()
                      ))
                    },
                  )
                ],
              ),
            ),
        ],
      ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  <Widget>[
            DrawerHeader(
              child: Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  child: Container(
                    child:Image.asset("./images/cfp.png"),
                  )
                ),
              ),
              decoration: BoxDecoration(
                color: Color(0xff3b8391),
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_right),
              leading: Icon(Icons.account_circle),
              title: Text('Se Connecter'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> Login("")
                ));
              },
            ),
            ListTile(
              trailing: Icon(Icons.arrow_right),
              leading: Icon(Icons.personal_video),
              title: Text('Departement du Numerique'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Numerique()
                ));
              },
            ),
            ListTile(
              trailing: Icon(Icons.arrow_right),
              leading: Icon(Icons.build),
              title: Text(
                "Departement de L'industrie"
              ),
              onTap: ()=>{
                Navigator.pop(context),
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>Industrie()
                ))
              },
            ),
            ListTile(
              trailing: Icon(Icons.arrow_right),
              leading: Icon(Icons.attach_money),
              title: Text(
                "Departement de la Gestion"
              ),
              onTap: ()=>{
                Navigator.pop(context),
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=> Gestion()
                ))
              },
            ),
            ListTile(
              trailing: Icon(Icons.arrow_right),
              leading: Icon(Icons.wc),
              title: Text(
                "Departement du Tertiaire"
              ),
              onTap: ()=>{
                Navigator.pop(context),
                Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>Tertaire()
                ))
              },
            ),
          ],
        ),
      ),
    );
  }
}
