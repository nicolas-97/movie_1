import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:movie_2/models/movie.dart';
import 'package:movie_2/models/now_playing_movie.dart';
import 'package:movie_2/models/popular_movies.dart';

class MovieProvider extends ChangeNotifier{
  String _apiKey = '6ae4ba0ab41510d8ce91e355e0b6a511';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';

  List<Movie> listNowPlayingMovies = [];
  List<Movie> popularMovies = [];
  
  MovieProvider(){
    this.getOnDisplayNowPlayingMovie();
    this.getOnDisplayPopularMovies();
  }

  getOnDisplayNowPlayingMovie() async {
    Uri url = Uri.https(
      _baseUrl,
      '3/movie/now_playing',
      {
        'api_key' : _apiKey,
        'language' : _language,
        'page' : '1'
      }
    );

    Response response = await http.get(url);
    NowPlayingMovie nowPlayingMovie = NowPlayingMovie.fromRawJson(response.body);
    listNowPlayingMovies = nowPlayingMovie.results!;

    notifyListeners();
  }
  getOnDisplayPopularMovies() async {
    Uri url = Uri.https(
      _baseUrl,
      '3/trending/movie/day',
      {
        'api_key' : _apiKey,
        'language' : _language,
        'page' : '1'
      }
    );

    Response response = await http.get(url);
    PopularMovies popular = PopularMovies.fromRawJson(response.body);
    popularMovies = popular.results!;

    notifyListeners();
  }
}