import 'package:flutter/material.dart';
void main() => runApp(MyApp(

));
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text('WTF'),
              floating: true,
              flexibleSpace: Placeholder(),
              expandedHeight: 200,
            ),
            SliverList(delegate: SliverChildBuilderDelegate((context,index)=>ListTile(title: Text('Item # $index '),),childCount: 100))

          ],
        ),
      ) ,
    );
  }
}


