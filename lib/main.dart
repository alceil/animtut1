import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home:MyHomePage()
));
class MyHomePage extends StatelessWidget {
  final items=List<ListItem>.generate(1200, (i)=>i%6==0?HeadingItem("Heading $i"):MessageItem("Sender $i","Meassage body $i"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Damn"),
      ),
      body: ListView.builder(itemCount:items.length,itemBuilder: (context,index){
        return ();
      }),
    );
  }
}



