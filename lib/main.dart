import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
home:OrientationTest(),
    theme: ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.lightBlue[100],
    accentColor: Colors.cyan[100],
)
));
class OrientationTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientation Demo'),
      ),
        body:Center(
          child: Container(
            color: Theme.of(context).accentColor,
            child: Text('Text with a background'),
          ),
        )
    );
  }
}

