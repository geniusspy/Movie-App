import '../../network/data_agent/movie_data_agent.dart';
import '../../network/data_agent/movie_data_agent_impl.dart';
import '../../network/response/movie_detail_response/movie_detail_response.dart';
import '../vos/movie_vos/result_vos.dart';
import 'movie_model.dart';

class MovieModelImpl extends MovieModel {
  MovieModelImpl._();

  static final MovieModelImpl _singleton = MovieModelImpl._();

  factory MovieModelImpl() => _singleton;

  final MovieDataAgent _movieDataAgent = MovieDataAgentImpl();

  @override
  Future<MovieDetailsResponse?> getMovieDetails(int movieID) =>
      _movieDataAgent.getMovieDetails(movieID);

  @override
  Future<List<MovieVO>?> getMoviesList() => _movieDataAgent.getMoviesList();
}