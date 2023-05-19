import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Center(
            child: Hero(
              tag: 'hero',
              child: NestedScrollView(
              floatHeaderSlivers: true,
                headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
                  SliverAppBar(
                    backgroundColor: Colors.black,
                    expandedHeight: 300,
                    floating: true,
                    pinned: true,
                    flexibleSpace: FlexibleSpaceBar(
                      title: const Text('The Flash'),
                      background: CachedNetworkImage(
                        imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                        fit: BoxFit.fill,
                        placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                        errorWidget: (context, url, error) => Icon(Icons.error),
                        width: double.infinity,
                        height: 400,
                      ),
                    ),
                  ),
                ],
                body: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(

                      margin: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text('Story Line',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,),),
                        const SizedBox(
                          width: double.infinity,
                          child: Expanded(
                              child: Text("The Flash is one of the better superhero shows on but it's been getting worse considering The Flash is barely in it anymore! Lately, the show has been more focused on Iris...which is a huge mistake! Ever since they put her as pretty much the lead since the Crisis crossover, every episode has been the lowest rated in series history! Go back to making this show about The Flash bc when you did it was still entertaining! I absolutely don't mind women as leads in action shows but the CW is getting ridiculous. This is even coming from a liberal who's all about equality but EVERY show now has a woman as it's lead now (Supergirl, Catwoman, Stargirl, Legends of Tomorrow, Green Arrow & The Canaries, and now even The Flash and Black Lightening are all about girl power! They even have a Kung-Fu remake coming that changed the lead to a woman. I mean WTF?)!",style: TextStyle(color: Colors.grey, fontSize: 10),)
                          ),
                        ),
                        const Text('Star Cast',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,),),
                        Container(
                          width: double.infinity,
                          height: 50,
                          margin: EdgeInsets.all(10),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: CachedNetworkImage(
                                    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                    fit: BoxFit.fill,
                                    placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                    errorWidget: (context, url, error) => Icon(Icons.error),
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Align (
                                      alignment: Alignment.topCenter,
                                      child: Text('Actor',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                      ),
                                    ),
                                    Align (
                                      alignment: Alignment.bottomCenter,
                                      child: Text('Donnie Yuan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: CachedNetworkImage(
                                    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                    fit: BoxFit.fill,
                                    placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                    errorWidget: (context, url, error) => Icon(Icons.error),
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Align (
                                      alignment: Alignment.topCenter,
                                      child: Text('Actor',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                      ),
                                    ),
                                    Align (
                                      alignment: Alignment.topCenter,
                                      child: Text('Donnie Yuan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: CachedNetworkImage(
                                    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                    fit: BoxFit.fill,
                                    placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                    errorWidget: (context, url, error) => Icon(Icons.error),
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Align (
                                      alignment: Alignment.topCenter,
                                      child: Text('Actor',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                      ),
                                    ),
                                    Align (
                                      alignment: Alignment.topCenter,
                                      child: Text('Donnie Yuan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: CachedNetworkImage(
                                    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                    fit: BoxFit.fill,
                                    placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                    errorWidget: (context, url, error) => Icon(Icons.error),
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Align (
                                      alignment: Alignment.topCenter,
                                      child: Text('Actor',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                      ),
                                    ),
                                    Align (
                                      alignment: Alignment.bottomCenter,
                                      child: Text('Donnie Yuan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: CachedNetworkImage(
                                    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                    fit: BoxFit.fill,
                                    placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                    errorWidget: (context, url, error) => Icon(Icons.error),
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Align (
                                      alignment: Alignment.topCenter,
                                      child: Text('Actor',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                      ),
                                    ),
                                    Align (
                                      alignment: Alignment.bottomCenter,
                                      child: Text('Donnie Yuan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: CachedNetworkImage(
                                    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                    fit: BoxFit.fill,
                                    placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                    errorWidget: (context, url, error) => Icon(Icons.error),
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Align (
                                      alignment: Alignment.topCenter,
                                      child: Text('Actor',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                      ),
                                    ),
                                    Align (
                                      alignment: Alignment.bottomCenter,
                                      child: Text('Donnie Yuan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: CachedNetworkImage(
                                    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                    fit: BoxFit.fill,
                                    placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                    errorWidget: (context, url, error) => Icon(Icons.error),
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    Align (
                                      alignment: Alignment.topCenter,
                                      child: Text('Actor',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                      ),
                                    ),
                                    Align (
                                      alignment: Alignment.bottomCenter,
                                      child: Text('Donnie Yuan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontSize: 10),
                                      ),
                                    ),
                                  ],
                                ),
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: CachedNetworkImage(
                                    imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                    fit: BoxFit.fill,
                                    placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                    errorWidget: (context, url, error) => Icon(Icons.error),
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                              ],
                            ),
                            ]
                          ),
                        ),
                        const Text('Talent Squad',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,),),
                        Container(
                          width: double.infinity,
                          height: 50,
                          margin: EdgeInsets.all(10),
                          child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: CachedNetworkImage(
                                      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                      fit: BoxFit.fill,
                                      placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 50,
                                      height: 50,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Align (
                                        alignment: Alignment.topCenter,
                                        child: Text('Actor',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                        ),
                                      ),
                                      Align (
                                        alignment: Alignment.bottomCenter,
                                        child: Text('Donnie Yuan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontSize: 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: CachedNetworkImage(
                                      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                      fit: BoxFit.fill,
                                      placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 50,
                                      height: 50,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Align (
                                        alignment: Alignment.topCenter,
                                        child: Text('Actor',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                        ),
                                      ),
                                      Align (
                                        alignment: Alignment.topCenter,
                                        child: Text('Donnie Yuan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontSize: 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: CachedNetworkImage(
                                      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                      fit: BoxFit.fill,
                                      placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 50,
                                      height: 50,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Align (
                                        alignment: Alignment.topCenter,
                                        child: Text('Actor',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                        ),
                                      ),
                                      Align (
                                        alignment: Alignment.topCenter,
                                        child: Text('Donnie Yuan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontSize: 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: CachedNetworkImage(
                                      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                      fit: BoxFit.fill,
                                      placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 50,
                                      height: 50,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Align (
                                        alignment: Alignment.topCenter,
                                        child: Text('Actor',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                        ),
                                      ),
                                      Align (
                                        alignment: Alignment.bottomCenter,
                                        child: Text('Donnie Yuan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontSize: 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: CachedNetworkImage(
                                      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                      fit: BoxFit.fill,
                                      placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 50,
                                      height: 50,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Align (
                                        alignment: Alignment.topCenter,
                                        child: Text('Actor',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                        ),
                                      ),
                                      Align (
                                        alignment: Alignment.bottomCenter,
                                        child: Text('Donnie Yuan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontSize: 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: CachedNetworkImage(
                                      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                      fit: BoxFit.fill,
                                      placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 50,
                                      height: 50,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Align (
                                        alignment: Alignment.topCenter,
                                        child: Text('Actor',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                        ),
                                      ),
                                      Align (
                                        alignment: Alignment.bottomCenter,
                                        child: Text('Donnie Yuan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontSize: 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: CachedNetworkImage(
                                      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                      fit: BoxFit.fill,
                                      placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 50,
                                      height: 50,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Align (
                                        alignment: Alignment.topCenter,
                                        child: Text('Actor',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                        ),
                                      ),
                                      Align (
                                        alignment: Alignment.bottomCenter,
                                        child: Text('Donnie Yuan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontSize: 10),
                                        ),
                                      ),
                                    ],
                                  ),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(40),
                                    child: CachedNetworkImage(
                                      imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                      fit: BoxFit.fill,
                                      placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                      errorWidget: (context, url, error) => Icon(Icons.error),
                                      width: 50,
                                      height: 50,
                                    ),
                                  ),
                                ],
                              ),
                              ]
                          ),
                        ),
                        const Text('Production Companies',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,),),
                        Container(
                          width: double.infinity,
                          height: 70,
                          margin: EdgeInsets.all(10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: CachedNetworkImage(
                                  imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                  fit: BoxFit.fill,
                                  placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.cover,),
                                  errorWidget: (context, url, error) => Icon(Icons.error),
                                  width: 50,
                                  height: 70,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Align (
                                    alignment: Alignment.topCenter,
                                    child: Text('Actor',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                    ),
                                  ),
                                  Align (
                                    alignment: Alignment.bottomCenter,
                                    child: Text('Donnie Yuan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontSize: 10),
                                    ),
                                  ),
                                ],
                              ),
                              ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: CachedNetworkImage(
                                  imageUrl: 'https://upload.wikimedia.org/wikipedia/en/e/ed/The_Flash_%28film%29_poster.jpg',
                                  fit: BoxFit.fill,
                                  placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                                  errorWidget: (context, url, error) => Icon(Icons.error),
                                  width: 50,
                                  height: 70,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: const [
                                  Align (
                                    alignment: Alignment.topCenter,
                                    child: Text('Actor',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,),
                                    ),
                                  ),
                                  Align (
                                    alignment: Alignment.topCenter,
                                    child: Text('Donnie Yuan',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w300, fontSize: 10),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Text('Recommended',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,),),
                        SizedBox(
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
                      ],
                )
                    ),
                  ]
                )
            ),
          )
          ),
      ),


    );
  }
}
