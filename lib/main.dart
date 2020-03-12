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
  final  items=List<String>.generate(100, (i)=>'Item $i') ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Long list'),
      ),
      body:ListView.builder(itemCount: items.length,
          itemBuilder: (context,index){
        return ListTile(title: Text('${items[index]}'),
        );
      }
      ) ,
    );
  }
}


