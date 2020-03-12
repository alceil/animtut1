import 'package:flutter/material.dart';
void main() => runApp(MyApp(

));
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=>MyHomePage(),
        '/second':(context)=>DetailsPage(),
      },
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Long list'),
      ),
      body:Center(
        child: RaisedButton(onPressed: ()
        {
          Navigator.pushNamed(context, '/second');
        },
          child: Text('Open Route'),
        ),
      ) ,
    );
  }
}
class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Route'),),
      body: Center(
        child: RaisedButton(onPressed: ()
        {
          Navigator.pop(context);
        },
          child: Text('Go Back'),
        ),
      ),
    ) ;
  }
}


