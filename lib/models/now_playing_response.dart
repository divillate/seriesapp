// To parse this JSON data, do
//
//     final nowPlayingResponse = nowPlayingResponseFromMap(jsonString);

import 'dart:convert';

class NowPlayingResponse {
  NowPlayingResponse({
    required this.dates,
    required this.page,
    required this.results,
    required this.totalPages,
    required this.totalResults,
  });

  Dates dates;
  int page;
  List<Result> results;
  int totalPages;
  int totalResults;

  factory NowPlayingResponse.fromJson(String str) =>
      NowPlayingResponse.fromMap(json.decode(str));

  factory NowPlayingResponse.fromMap(Map<String, dynamic> json) =>
      NowPlayingResponse(
        dates: Dates.fromMap(json["dates"]),
        page: json["page"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromMap(x))),
        totalPages: json["total_pages"],
        totalResults: json["total_results"],
      );
}

class Dates {
  Dates({
    required this.maximum,
    required this.minimum,
  });

  DateTime maximum;
  DateTime minimum;

  factory Dates.fromJson(String str) => Dates.fromMap(json.decode(str));

  factory Dates.fromMap(Map<String, dynamic> json) => Dates(
        maximum: DateTime.parse(json["maximum"]),
        minimum: DateTime.parse(json["minimum"]),
      );

  Map<String, dynamic> toMap() => {
        "maximum":
            "${maximum.year.toString().padLeft(4, '0')}-${maximum.month.toString().padLeft(2, '0')}-${maximum.day.toString().padLeft(2, '0')}",
        "minimum":
            "${minimum.year.toString().padLeft(4, '0')}-${minimum.month.toString().padLeft(2, '0')}-${minimum.day.toString().padLeft(2, '0')}",
      };
}

class Result {
  Result({
    required this.adult,
    required this.backdropPath,
    required this.genreIds,
    required this.id,
    required this.originalLanguage,
    required this.originalTitle,
    required this.overview,
    required this.popularity,
    required this.posterPath,
    required this.releaseDate,
    required this.title,
    required this.video,
    required this.voteAverage,
    required this.voteCount,
  });

  bool adult;
  String backdropPath;
  List<int> genreIds;
  int id;
  Stream originalLanguage;
  String originalTitle;
  String overview;
  double popularity;
  String posterPath;
  DateTime releaseDate;
  String title;
  bool video;
  double voteAverage;
  int voteCount;

  factory Result.fromJson(String str) => Result.fromMap(json.decode(str));

  factory Result.fromMap(Map<String, dynamic> json) => Result(
        adult: json["adult"],
        backdropPath: json["backdrop_path"],
        genreIds: List<int>.from(json["genre_ids"].map((x) => x)),
        id: json["id"],
        originalLanguage: json["original_language"],
        originalTitle: json["original_title"],
        overview: json["overview"],
        popularity: json["popularity"].toDouble(),
        posterPath: json["poster_path"],
        releaseDate: DateTime.parse(json["release_date"]),
        title: json["title"],
        video: json["video"],
        voteAverage: json["vote_average"].toDouble(),
        voteCount: json["vote_count"],
      );
}
