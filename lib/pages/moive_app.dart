// ignore: depend_on_referenced_packages
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/data/model/movie_model.dart';
import 'package:movie_app/pages/actor_profile.dart';
import 'package:movie_app/pages/movie_page.dart';
import 'package:movie_app/pages/reuseable.dart';

import '../data/model/movie_model_impl.dart';
import '../data/vos/movie_vos/result_vos.dart';

final MovieModel _movieModel = MovieModelImpl();
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  get items => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                width: double.infinity,
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 300,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const ListTile(
                          leading: Text('Search Movies...'),
                        )
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.redAccent,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Icon(Icons.search),
                      ),
                    ],
                  ),
              ),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: const ListTile(leading: Text('Upcoming',style: TextStyle(color: Colors.white),),),
                  ),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const ListTile(leading: Text('Fantasy',style: TextStyle(color: Colors.white),),),
                  ),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const ListTile(leading: Text('Animation',style: TextStyle(color: Colors.white),),),
                  ),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const ListTile(leading: Text('SuperHero',style: TextStyle(color: Colors.white),),),
                  ),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const ListTile(leading: Text('Horror',style: TextStyle(color: Colors.white),),),
                  ),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const ListTile(leading: Text('Thriller',style: TextStyle(color: Colors.white),),),
                  ),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const ListTile(leading: Text('Drama',style: TextStyle(color: Colors.white),),),
                  ),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const ListTile(leading: Text('Romance',style: TextStyle(color: Colors.white),),),
                  ),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const ListTile(leading: Text('Action',style: TextStyle(color: Colors.white),),),
                  ),
                  Container(
                    width: 100,
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: const ListTile(leading: Text('Adventure',style: TextStyle(color: Colors.white),),),
                  ),
                ],
                )
                ),
                // CachedNetworkImage(
                //   imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                //   placeholder: (context, url) => CircularProgressIndicator(),
                //   errorWidget: (context, url, error) => Icon(Icons.error),
                // ),
        CarouselSlider(
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
            items: [1, 2, 3, 4, 5].map((i) {
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
                    return MovieView(movieData: movieModel);
                  }
              );
            }).toList(),
        ),
        Center(
          child: Hero(
            tag: 'hero',
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const MoviePage()));
              },
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CachedNetworkImage(
                              imageUrl: "https://upload.wikimedia.org/wikipedia/en/7/74/Guardians_of_the_Galaxy_Vol._3_poster.jpg",
                              fit: BoxFit.fill,
                              placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                              width: 200,
                              height: 200,
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
                          Positioned.fill(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.star_border_outlined,color: Colors.amber,),
                                      Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                      Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                    ],
                                  )
                                ],
                              )
                          )
                        ],
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CachedNetworkImage(
                              imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                              fit: BoxFit.fill,
                              placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                              width: 200,
                              height: 200,
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
                          Positioned.fill(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.star_border_outlined,color: Colors.amber,),
                                      Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                      Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                    ],
                                  )
                                ],
                              )
                          )
                        ],
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CachedNetworkImage(
                              imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                              fit: BoxFit.fill,
                              placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                              width: 200,
                              height: 200,
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
                          Positioned.fill(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.star_border_outlined,color: Colors.amber,),
                                      Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                      Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                    ],
                                  )
                                ],
                              )
                          )
                        ],
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CachedNetworkImage(
                              imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                              fit: BoxFit.fill,
                              placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                              width: 200,
                              height: 200,
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
                          Positioned.fill(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.star_border_outlined,color: Colors.amber,),
                                      Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                      Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                    ],
                                  )
                                ],
                              )
                          )
                        ],
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CachedNetworkImage(
                              imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                              fit: BoxFit.fill,
                              placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                              width: 200,
                              height: 200,
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
                          Positioned.fill(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.star_border_outlined,color: Colors.amber,),
                                      Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                      Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                    ],
                                  )
                                ],
                              )
                          )
                        ],
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CachedNetworkImage(
                              imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                              fit: BoxFit.fill,
                              placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                              width: 200,
                              height: 200,
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
                          Positioned.fill(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.star_border_outlined,color: Colors.amber,),
                                      Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                      Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                    ],
                                  )
                                ],
                              )
                          )
                        ],
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CachedNetworkImage(
                              imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                              fit: BoxFit.fill,
                              placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                              width: 200,
                              height: 200,
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
                          Positioned.fill(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.star_border_outlined,color: Colors.amber,),
                                      Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                      Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                    ],
                                  )
                                ],
                              )
                          )
                        ],
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CachedNetworkImage(
                              imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                              fit: BoxFit.fill,
                              placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                              width: 200,
                              height: 200,
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
                          Positioned.fill(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.star_border_outlined,color: Colors.amber,),
                                      Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                      Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                    ],
                                  )
                                ],
                              )
                          )
                        ],
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: CachedNetworkImage(
                              imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                              fit: BoxFit.fill,
                              placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                              errorWidget: (context, url, error) => Icon(Icons.error),
                              width: 200,
                              height: 200,
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
                          Positioned.fill(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: EdgeInsets.all(6),
                                    child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(Icons.star_border_outlined,color: Colors.amber,),
                                      Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                      Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                    ],
                                  )
                                ],
                              )
                          )
                        ],
                      ),

                    ),
                  ],
                ),
              ),
            ),
          ),
        ),

                Container(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsets.all(10),
                  child: Text('You may like ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                ),
                Center(
                  child: Hero(
                    tag: 'hero',
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const MoviePage()));
                      },
                      child: SizedBox(
                        width: double.infinity,
                        height: 300,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsets.all(10),
                  child: Text('Popular ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
                ),
                Center(
                  child: Hero(
                    tag: 'hero',
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const MoviePage()));
                      },
                      child: SizedBox(
                        width: double.infinity,
                        height: 300,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: CachedNetworkImage(
                                      imageUrl: "https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg",
                                      fit: BoxFit.fill,
                                      placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 200,
                                      height: 300,
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
                                  Positioned.fill(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            padding: EdgeInsets.all(6),
                                            child: Text('The Flash',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Icon(Icons.star_border_outlined,color: Colors.amber,),
                                              Text('4.5',style: TextStyle(color: Colors.grey),textAlign: TextAlign.left,),
                                              Text('5000 Views',style: TextStyle(color: Colors.grey),),
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),

                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 300,
                    viewportFraction: 0.55,
                    initialPage: 0,
                    enableInfiniteScroll: false,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: const Duration(seconds: 2),
                    autoPlayAnimationDuration: Duration(seconds: 10),
                    autoPlayCurve: Curves.slowMiddle,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.2,
                    scrollDirection: Axis.horizontal,
                  ),
                  items: [1, 2, 3, 4, 5].map((i) {
                    return Center(
                      child: Hero(
                          tag: 'hero',
                      child: GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) => const ActorProfile()));
                        },
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                                        imageUrl: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRagDbdPOYBTewt-XR4gD3FD9a2NeFscoiPxg&usqp=CAU",
                                        fit: BoxFit.fill,
                                        placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                        errorWidget: (context, url, error) => Icon(Icons.error),
                                        width: 200,
                              height: 300,
                                      ),
                          )
                        ],
                      ),
                      ),
                    ),
                    );
                  }).toList(),
                ),
              ],
            ),
        ]
          )
      )
    );
  }
}