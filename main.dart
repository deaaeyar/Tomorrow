import 'package:flutter/material.dart';
import 'package:tomorrow/Pages/Count.dart';
import './Pages/Home.dart';
import './Pages/House.dart';

var cute = "\nAre you OK leon?";
var myText = Text(cute,
    style: TextStyle(
        backgroundColor: Colors.yellowAccent[400],
        fontSize: 20,
        color: Colors.black,
        fontStyle: FontStyle.italic));
void main() {
  runApp(
     MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: Home(),
      routes:{
        '/':(context) =>const Count(),
        '/home':(context) =>const Home(),
        '/House':(context) => Body(name:"Deaaeyar")
      },
      theme: ThemeData(
        fontFamily: 'English',
        primarySwatch: Colors.indigo,
      ),
    ),
  );
}