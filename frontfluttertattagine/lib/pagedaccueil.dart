import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:frontfluttertattagine/pages/Login.dart';
import 'package:frontfluttertattagine/pages/Numerique.dart';

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
      body: Center(
        child: Text("Bienvenue",style: TextStyle(
            color: Colors.orange, fontFamily: 'times New Roman',fontSize: 22
        ),),
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
                  builder: (context)=> Login()
                ));
              },
            ),
            ListTile(
              trailing: Icon(Icons.arrow_right),
              leading: Icon(Icons.personal_video),
              title: Text('Departement Numerique'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) => Numerique()
                ));
              },
            ),
//            ListTile(
//              trailing: Icon(Icons.arrow_right),
//              leading: Icon(Icons.school),
//              title: Text('Candidature'),
//            ),
          ],
        ),
      ),
    );
  }
}
