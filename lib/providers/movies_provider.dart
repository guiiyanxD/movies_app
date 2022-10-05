import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier{
  String _baseUrl  = 'api.themoviedb.org';
  String _apiKey   = '9c5e07c2c64744bfc14fee50bb390e9a';
  String _language  = 'es-ES';

  MoviesProvider(){
    print("This is our first time by using the State Management. 🎉");


    getNowPlayingMovies();
  }

  getNowPlayingMovies() async {
    var url = Uri.https(_baseUrl, '/3/movie/now_playing',
      {
      'api_key'  : _apiKey,
      'language' : _language,
      'page'     : '1',
      }
    );

    var response = await http.get(url);
    // response.statusCode == 200;
    print(response.body);
  }
}