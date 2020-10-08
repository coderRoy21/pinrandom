import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:core';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Random PIN'),
        ),

        body: Randomiser(),
      ),
    );
  }
}

class Randomiser extends StatefulWidget {
  @override
  _RandomiserState createState() => _RandomiserState();
}

class _RandomiserState extends State<Randomiser> {
  var random= 0,key;
  Map<String,int> pins = Map();

  void gen(){

    setState(() {
      random = Random().nextInt(10000);
      if(random <1000){
        do{
          random = Random().nextInt(10000);

        }while(random < 1000);
      }
      key = random % 97;
      pins["2"] = 3;


      return key;
    });


  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children:<Widget> [
            Text('$key'),
            SizedBox(
              height: 50.0,
            ),
            RaisedButton(
              onPressed: (){
                  gen();



              },
              child: Text('Generate!'),
            ),

          ],
        ),
      ),
    );
  }
}

