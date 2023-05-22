import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../../constant/api_constant.dart';
import '../../response/movie_detail_response/movie_detail_response.dart';
import '../../response/movie_response/movie_home_page_response.dart';
import '../../response/popular_movie_resonse/popular_movies_response.dart';

part 'movie_api.g.dart';

@RestApi(baseUrl: kMovieBaseURL)
abstract class MovieAPI {
  factory MovieAPI(Dio dio) => _MovieAPI(dio);

  @GET(kGetNowPlayingMoviesEndPoint)
  Future<MovieResponse> getNowPlayingMovieResponse(
      @Query(kQueryParamsApiKey) String apiKey,
      );

  @GET(kGetMovieDetailsEndPoint)
  Future<MovieDetailsResponse> getMovieDetailsResponse(
      @Query(kQueryParamsApiKey) String apiKey,
      @Path(kPathParameterMovieID) int movieID);

  @GET(kGetPopularMoviesEndPoint)
  Future<PopularMovieResponse> getPopularMoviesResponse(
      @Query(kQueryParamsApiKey) String apiKey,
      );
}