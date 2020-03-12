import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async {
  final http.Response response =
  await http.get('https://jsonplaceholder.typicode.com/albums/1');

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}
Future<Album> deleteAlbum(String id) async {
  final http.Response response = await http.delete('https://jsonplaceholder.typicode.com/albums/$id',
      headers:<String,String>
      {
        'Content-Type':'application/json;charset=UTF-8',
      } );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    return Album.fromJson(json.decode(response.body));
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load album');
  }
}


class Album {
  final int id;
  final String title;

  Album({ this.id, this.title});

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(

      id: json['id'],
      title: json['title'],
    );
  }
}

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Future<Album> futureAlbum;

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context, snapshot) {
              if(snapshot.connectionState==ConnectionState.done)
                {
                  if (snapshot.hasData) {
                    return Column(
                      children: <Widget>[
                        Text('${snapshot.data?.title??'Deleted'}'),
                        RaisedButton(
                          onPressed: (){setState(() {
                            futureAlbum=deleteAlbum(snapshot.data.id.toString());
                          });},
                          child: Text('Delete Data'),
                        )
                      ],
                    );
                  }
                }else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }

              // By default, show a loading spinner.
              return CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
