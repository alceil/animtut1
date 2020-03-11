import 'package:flutter/material.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  final appTitle='Form Validation Demo';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: CustomForm(),
        
      ),
    );
  }
}
class CustomForm extends StatefulWidget {
  @override
  _CustomFormState createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey=GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            validator: (value){
              if(value.isEmpty){
                return 'Enter some text kid';
              }
              else
                return null;
            },
          ),
          RaisedButton(
            onPressed: (){
              if(_formKey.currentState.validate())
                {
                  Scaffold.of(context).showSnackBar(SnackBar(content: Text('Processing data'),));

                }
            },
            child: Text('Submit'),
          )

        ],
      ),
    );
  }
}


