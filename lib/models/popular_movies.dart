// To parse this JSON data, do
//
//     final popularMovies = popularMoviesFromJson(jsonString);

import 'dart:convert';

import 'package:movie_2/models/movie.dart';

PopularMovies popularMoviesFromJson(String str) => PopularMovies.fromJson(json.decode(str));

String popularMoviesToJson(PopularMovies data) => json.encode(data.toJson());

class PopularMovies {
    int? page;
    List<Movie>? results;
    int? totalPages;
    int? totalResults;

    PopularMovies({
        this.page,
        this.results,
        this.totalPages,
        this.totalResults,
    });

    factory PopularMovies.fromRawJson(String str) => PopularMovies.fromJson(json.decode(str));

    factory PopularMovies.fromJson(Map<String, dynamic> json) => PopularMovies(
        page: json["page"],
        results: json["results"] == null ? [] : List<Movie>.from(json["results"]!.map((x) => Movie.fromJson(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "results": results == null ? [] : List<dynamic>.from(results!.map((x) => x.toJson())),
        "total_pages": totalPages,
        "total_results": totalResults,
    };
}