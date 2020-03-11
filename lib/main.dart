import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
home:OrientationTest()
));
class OrientationTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Orientation Demo'),
      ),
    );
  }
}

