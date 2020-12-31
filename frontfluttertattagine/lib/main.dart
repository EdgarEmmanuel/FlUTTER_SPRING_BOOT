import 'package:flutter/material.dart';
import 'pagedaccueil.dart';

void main()=>runApp(
    new MaterialApp(
      home: new AccueilPage(),
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        appBarTheme: AppBarTheme(
            color: Colors.cyan
        ),
      ),
      debugShowCheckedModeBanner: false,
    )
);

