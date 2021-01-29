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
            child: Text(
              "DEPARTEMENT NUMERIQUE"
            ),
          ),
        ],
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
                        child:Image.asset("images/cfp.png"),
                      )
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff3b8391),
                ),
              ),
              ListTile(
                trailing: Icon(Icons.arrow_right),
                leading: Icon(Icons.perm_camera_mic),
                title: Text('Communication digitale'),
                // onTap: () {
                //   Navigator.pop(context);
                //   Navigator.push(context, MaterialPageRoute(
                //       builder: (context) => Numerique()
                //   ));
                // },
              ),
              ListTile(
                trailing: Icon(Icons.arrow_right),
                leading: Icon(Icons.collections_bookmark),
                title: Text(
                    "Marketing digital"
                ),
                // onTap: ()=>{
                //   Navigator.pop(context),
                //   Navigator.push(context, MaterialPageRoute(
                //       builder: (context)=>Industrie()
                //   ))
                // },
              ),
              ListTile(
                trailing: Icon(Icons.arrow_right),
                leading: Icon(Icons.desktop_windows),
                title: Text(
                    "Développement web"
                ),
                // onTap: ()=>{
                //   Navigator.pop(context),
                //   Navigator.push(context, MaterialPageRoute(
                //       builder: (context)=> Gestion()
                //   ))
                // },
              ),
              ListTile(
                trailing: Icon(Icons.arrow_right),
                leading: Icon(Icons.settings_input_antenna),
                title: Text(
                    "Réseau informatique"
                ),
                // onTap: ()=>{
                //   Navigator.pop(context),
                //   Navigator.push(context, MaterialPageRoute(
                //       builder: (context)=>Tertaire()
                //   )),
                // },
              ),
              ListTile(
                trailing: Icon(Icons.arrow_right),
                leading: Icon(Icons.security),
                title: Text(
                    "Maintenance informatique"
                ),
                // onTap: ()=>{
                //   Navigator.pop(context),
                //   Navigator.push(context, MaterialPageRoute(
                //       builder: (context)=> Apropos()
                //   )),
                // },
              ),
            ],
          ),
        ),
    );
  }

}