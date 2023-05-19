import 'package:json_annotation/json_annotation.dart';

import '../../../data/vos/date_vos/date_vos.dart';
import '../../../data/vos/movie_vos/result_vos.dart';
part 'movie_home_page_response.g.dart';

@JsonSerializable()
class MovieResponse {
  @JsonKey(name: 'dates')
  DatesVO? dates;

  @JsonKey(name: 'page')
  int? page;

  @JsonKey(name: 'results')
  List<MovieVO>? results;

  @JsonKey(name: 'total_pages')
  int? totalPages;

  @JsonKey(name: 'total_results')
  int? totalResults;

  MovieResponse(
      {this.dates,
        this.page,
        this.results,
        this.totalPages,
        this.totalResults});

  factory MovieResponse.fromJson(Map<String, dynamic> json) =>
      _$MovieResponseFromJson(json);
}