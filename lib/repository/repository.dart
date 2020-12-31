import 'dart:convert';

import 'package:flutter_list_app/models/album.models.dart';
import 'package:http/http.dart' as http;

class Repository {
  Future<Album> fetchAlbum() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/albums/1');
    if (response.statusCode == 200) {
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception("Failed to fetch Data");
    }
  }
}
