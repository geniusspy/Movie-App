import '../../data/vos/movie_vos/result_vos.dart';
import '../response/movie_detail_response/movie_detail_response.dart';

abstract class MovieDataAgent {
  Future<List<MovieVO>?> getMoviesList();

  Future<MovieDetailsResponse?> getMovieDetails(int movieID);
}