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
      body:ListView.builder(itemCount: items.length,
          itemBuilder: (context,index){
        final item=items[index];
        return Dismissible(

          key:Key(item),

          onDismissed: (direction){
            setState(() {
              items.removeAt(index);
            });
            Scaffold.of(context).showSnackBar(SnackBar(content: Text('$item Dismmised'),));

          },
          background: Container(color:Colors.red),
          child: ListTile(title: Text("$item"),),
        );
          }) ,
    );
  }
}
