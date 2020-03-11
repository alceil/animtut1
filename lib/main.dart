import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
      body:Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160,
              color: Colors.red,
            ),
            Container(
              width: 160,
              color: Colors.blue,
            ),
            Container(
              width: 160,
              color: Colors.green,
            ),
            Container(
              width: 160,
              color: Colors.yellow,
            )
          ],
        ),
      )    );
  }
}
