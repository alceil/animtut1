import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main() => runApp(MaterialApp(
  home:MyHomePage()
));


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items=List<String>.generate(20,(i)=>"Items ${i+1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('item deletion'),),
      body:Image.network('https://picsum.photos/250?image=9') ,
    );
  }
}
