import 'dart:js';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Page1(),
));
class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(onPressed: (){Navigator.of.push(_createroute());},
            child: Text("Go")
        ),
      ),
    );
  }
}
Route _createroute(){
  return PageRouteBuilder(
    pageBuilder: (context,animation,secondaryAnimation)=>Page2(),
    transitionsBuilder: (context,animation,secondaryAnimation,child){
      return child;
    }
  );
}
class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text("Page1"),
      ),
    );
  }
}




