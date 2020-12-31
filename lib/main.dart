import 'package:flutter/material.dart';
import 'package:flutter_list_app/views/album.views.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AlbumView(),
    );
  }
}



