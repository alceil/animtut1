import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async{
  final response =http.get('https://jsonplaceholder.typicode.com/albums/1',headers: {HttpHeaders.authorizationHeader:"blah"});
  final responseJson = json.decode(response.body);
  return Album.fromJson(responseJson);
}


Future<Album> createAlbum(String title) async {
  final http.Response response = await http.post(
    'https://jsonplaceholder.typicode.com/albums',
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'title': title,
    }),
  );

  if (response.statusCode == 201) {
    return Album.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to create album.');
  }
}
class photo{
  final int id;
  final String title;
  final String thumbnailUrl;
  photo({this.id,this.title,this.thumbnailUrl});
  factory photo.fromJson(Map<String,dynamic> json)
  {
    return photo(
        id: json['id'],
        title: json['title'],
        thumbnailUrl: json['thumbnailUrl']
    );
  }
}

List<Photo> parsePhotos(String responseBody)
{
  final parse=json.decode(responseBody).cast<Map<String,dynamic>>();
  re

}


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _controller = TextEditingController();
  Future<Album> _futureAlbum;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Create Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Create Data Example'),
        ),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(8.0),
          child: (_futureAlbum == null)
              ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _controller,
                decoration: InputDecoration(hintText: 'Enter Title'),
              ),
              RaisedButton(
                child: Text('Create Data'),
                onPressed: () {
                  setState(() {
                    _futureAlbum = createAlbum(_controller.text);
                  });
                },
              ),
            ],
          )
              : FutureBuilder<Album>(
            future: _futureAlbum,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.title);
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
