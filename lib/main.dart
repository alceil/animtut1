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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Textfield Focus'),
      ),
    );
  }
}

