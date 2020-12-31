import 'package:flutter/material.dart';

class AccueilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CFP-GETECH",style: TextStyle(
          color: Colors.black, fontFamily: 'times New Roman',fontSize: 22,
        )),
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
                child: CircleAvatar(
                  backgroundImage: AssetImage("./images/profile.jpg"),
                  radius: 50,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.cyan,
              ),
            ),
            ListTile(
              trailing: Icon(Icons.arrow_right),
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                  //  builder: (context)=> ProfilePage()
                ));
              },
            ),
            ListTile(
              trailing: Icon(Icons.arrow_right),
              leading: Icon(Icons.dehaze),
              title: Text('Liste des pharmacie'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(
                  //builder: (context) => PharmaciePage()
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
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            title: Text('Menu'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.phone),
            title: Text('Contact'),
          ),

        ],
      ),
    );
  }
}
