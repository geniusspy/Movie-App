import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/data/vos/movie_vos/result_vos.dart';

import '../data/model/movie_model.dart';
import '../data/model/movie_model_impl.dart';
import 'movie_page.dart';
final MovieModel _movieModel = MovieModelImpl();

class NetworkImage extends StatelessWidget {
  const NetworkImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MovieVO>?>(
        future: _movieModel.getMoviesList(),
        builder: (context, snapShot) {
          if (snapShot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapShot.hasError) {
            return const Center(
              child: Text("Error Fetching"),
            );
          }
          final listMovie = snapShot.data;
          return  CarouselSlider(
            options: CarouselOptions(
              height: 350,
              viewportFraction: 0.7,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 500),
              autoPlayCurve: Curves.linear,
              enlargeCenterPage: true,
              enlargeFactor: 0.2,
              scrollDirection: Axis.horizontal,
            ),
            items: listMovie?.toList().map((i) {
              return FutureBuilder<List<MovieVO>?>(
                  future: _movieModel.getMoviesList(),
                  builder: (context,snapShot) {
                    if(snapShot.connectionState == ConnectionState.waiting) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                    if(snapShot.hasError){
                      return const Center(
                        child: Text('Error Fetching'),
                      );
                    }
                    final movieModel = snapShot.data;
                    return Image.network('https://image.tmdb.org/t/p/w500${i.posterPath}');
                  }
              );
            }).toList(),
          );
        });
  }
}

class MovieView extends StatelessWidget {
  const MovieView({Key? key, required this.movieData}) : super(key: key);
  final List<MovieVO>? movieData;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Hero(
        tag: 'hero',
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => const MoviePage()));
          },
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: CachedNetworkImage(
                  imageUrl: "",
                  fit: BoxFit.fill,
                  placeholder: (context, url) => Image.asset("https://image.tmdb.org/t/p/w500/${_movieModel}"
                    ,fit: BoxFit.fill,),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              ),
              Positioned.fill(
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black],
                      )),
                ),
              ),
              const Positioned.fill(child: Icon(
                Icons.play_circle_fill,
                color: Colors.redAccent,
                size: 70,
              ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CarousalImage extends StatelessWidget {
  const CarousalImage({Key? key,required this.future,required this.itemBuilder, this.dataLimit}) : super(key: key);
  final Future<List<MovieVO>?>future;
  final Widget Function(BuildContext context) itemBuilder;
  final int? dataLimit;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<MovieVO>?>(
        future: _movieModel.getMoviesList(),
    builder: (context,snapShot) {
      if (snapShot.connectionState == ConnectionState.waiting) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (snapShot.hasError) {
        return const Center(
          child: Text('Error Fetching'),
        );
      }
      return SizedBox(
        height: 350,
        child: CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (context,index,realindex) =>
          itemBuilder(context),
          options: CarouselOptions(
            height: 350,
            enableInfiniteScroll: false,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
            autoPlay: false,
          ),
        ),
      );
    }
    );
  }
}
// Positioned.fill(
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.start,
// mainAxisAlignment: MainAxisAlignment.end,
// children: [
// Container(
// padding: EdgeInsets.all(6),
// child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
// ),
// Row(
// mainAxisAlignment: MainAxisAlignment.spaceAround,
// children: [
// Icon(Icons.star_border_outlined,color: Colors.amber,),
// Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
// Text('5000 Views',style: TextStyle(color: Colors.grey),),
// ],
// )
// ],
// )
// )
