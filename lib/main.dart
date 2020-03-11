import 'package:flutter/material.dart';

void main() => runApp(Demo(

));
class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('Snack Bar tutorial'),
        ),
        body: MyHomePage(),
      ),

    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
        child: RaisedButton(
          onPressed: (){
            final snackBar=SnackBar(
              content: Text('Yay! a snackbar'),
              action: SnackBarAction(
                label: 'undo',
                onPressed: (){},
              ),
            );
            Scaffold.of(context).showSnackBar(snackBar);
          },
          
          child: Text('Show snackbar'),
        ),
      );
  }
}
