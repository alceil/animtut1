import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main() => runApp(MaterialApp(
  home:MyHomePage()
));


class MyHomePage extends StatefulWidget {
  final items=List<String>.generate(20,(i)=>"Items ${i+1}");
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Inkwell 4 u'),),
      body: ,
    );
  }
}
