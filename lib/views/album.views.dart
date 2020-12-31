import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_list_app/models/album.models.dart';
import 'package:flutter_list_app/repository/repository.dart';

class AlbumView extends StatefulWidget {
  @override
  _AlbumViewState createState() => _AlbumViewState();
}

class _AlbumViewState extends State<AlbumView> {
  Repository repository = Repository();
  Future<Album> album;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    album = repository.fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Album lists",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
            appBar: AppBar(
              title: Text('App'),
            ),
            body: FutureBuilder<Album>(
              future: album,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data.title);
                } else if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                }
                return CircularProgressIndicator();
              },
            )));
  }
}
