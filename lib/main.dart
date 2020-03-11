import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyHomePage(),

));
class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar Demo'),
      ),
      body: Center(
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
      ),
    );
  }
}
