
import 'package:movie_app/data/vos/popularity_vos/popularity_vos.dart';

import '../../network/response/movie_detail_response/movie_detail_response.dart';
import '../vos/movie_vos/result_vos.dart';

abstract class MovieModel {
  Future<List<MovieVO>?> getMoviesList();
  Future<List<PopularityVO>?> getPopularMovies();

  Future<MovieDetailsResponse?> getMovieDetails(int movieID);
}