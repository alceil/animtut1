import 'package:flutter/material.dart';

void main() => runApp(MyApp(

));
class MyApp extends StatelessWidget {
  final appTitle='Drawer Demo';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomepage(title: appTitle),

    );
  }
}
class MyHomepage extends StatefulWidget {
  final String title;
  MyHomepage({Key key,this.title}):super(key:key);
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}

class bhatbhat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
