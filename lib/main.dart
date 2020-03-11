import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main() => runApp(MaterialApp(
  home:MyCustomForm() ,
));
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  FocusNode myfocusnode;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myfocusnode=FocusNode();
  }
  @override
  void dispose() {
    myfocusnode.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Textfield Focus'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            autofocus: true,
          ),
          TextField(
            focusNode: myfocusnode,
          )

        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){FocusScope.of(context).requestFocus(myfocusnode);},child: Icon(Icons.edit),
      ),
    );
  }
}

