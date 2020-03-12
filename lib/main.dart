import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

Future<Album> fetchAlbum() async
{
  final response = await http.get('https://jsonplaceholder.typicode.com/albums/1');
  if(response.statusCode==200)
  {
    return Album.fromJson(json.decode(response.body));
  }
  else
    {
      throw Exception('Failed to load a album');
    }
}
class Album{
  final int userId;
  final int id;
  final String title;
  Album({this.userId,this.id,this.title});
  factory Album.fromJson(Map <String,dynamic> json)
  {
    return Album(
      userId:json['userId'],
        id:json['id'],
        title:json['title'],
    );
  }
}
void main()=>runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
 Future<Album> futureAlbum;
 @override
  void initState() {
    super.initState();
    futureAlbum=fetchAlbum();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch album data'),
      ),
    );
  }
}
