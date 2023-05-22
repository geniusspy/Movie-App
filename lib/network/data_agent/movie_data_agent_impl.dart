import 'package:dio/dio.dart';
import 'package:movie_app/data/vos/popularity_vos/popularity_vos.dart';
import '../../constant/api_constant.dart';
import '../../data/vos/movie_vos/result_vos.dart';
import '../api/movie_api/movie_api.dart';
import '../response/movie_detail_response/movie_detail_response.dart';
import 'movie_data_agent.dart';

class MovieDataAgentImpl extends MovieDataAgent {
  late MovieAPI _api;

  MovieDataAgentImpl._() {
    _api = MovieAPI(Dio());
  }

  static final MovieDataAgentImpl _singleton = MovieDataAgentImpl._();

  factory MovieDataAgentImpl() => _singleton;

  @override
  Future<MovieDetailsResponse?> getMovieDetails(int movieID) =>
      _api.getMovieDetailsResponse(kApiKey2, movieID);

  @override
  Future<List<MovieVO>?> getMoviesList() => _api
      .getNowPlayingMovieResponse(kApiKey2)
      .asStream()
      .map((event) => event.results)
      .first;

  @override
  Future<List<PopularityVO>?> getPopularMovies() => _api
      .getPopularMoviesResponse(kApiKey2)
      .asStream()
      .map((event) => event.results)
      .first;


}