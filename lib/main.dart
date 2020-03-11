import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(
  home:MyHomePage()
));

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('item deletion'),),
        body:GridView.count(
            crossAxisCount: 2,
            children: List.generate(100, (i){
              return Center(
                child: Text('Item $i'),
              );
            }
            )

        )
    );
  }
}

