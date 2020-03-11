import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyHomePage(),

));
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drawer Demo'),

      ),
      body: Center(child: Text('My Page'),),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue

              ),
            ),
            ListTile(
              title:Text('Item 1') ,onTap: (){Navigator.pop(context);},

            ),
            ListTile(
              title:Text('Item 2') ,onTap: (){Navigator.pop(context);},
            ),
          ],
        ),
      ),

    );
  }
}


