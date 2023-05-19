import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'movie_page.dart';

class ActorProfile extends StatelessWidget {
  const ActorProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: NestedScrollView(
              floatHeaderSlivers: true,
              headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) => [
                SliverAppBar(
                  backgroundColor: Colors.black,
                  expandedHeight: 300,
                  floating: true,
                  pinned: true,
                  flexibleSpace: FlexibleSpaceBar(
                    title: const Text('Donnie Yen'),
                    background: CachedNetworkImage(
                      imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRagDbdPOYBTewt-XR4gD3FD9a2NeFscoiPxg&usqp=CAU',
                      fit: BoxFit.fill,
                      placeholder: (context,url) => Image.asset('images/tmdb_place_holder.jpg',fit: BoxFit.fill,),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                      width: double.infinity,
                      height: 400,
                    ),
                  ),
                )
              ],
              body: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                            margin: EdgeInsets.all(10),
                          child: const Text('Biography',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,),),
                        ),
                        const Divider(
                          color: Colors.white,
                          indent: 13,
                          endIndent: 13,
                          height: 5,
                          thickness: 2,
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: const Text("Donnie Yen Ji-dan[1][3] (Chinese: 甄子丹; born 27 July 1963) is a Hong Kong actor, martial artist, and action director.[4][5] Regarded as one of Hong Kong's top action stars,[6] Yen is widely credited for bringing mixed martial arts (MMA) into mainstream Asian cinema by choreographing MMA in many of his films since the early 2000s. The first Chinese UFC champion Zhang Weili stated that Yen's films introduced her to MMA. Yen has displayed skill in an array of martial arts, being well-versed in Tai Chi, Boxing, Kickboxing, Jeet Kune Do, Hapkido, Mixed martial arts, Taekwondo, Karate, Muay Thai, Wrestling, Brazilian jiu-jitsu, Hung Ga, Sanda, Judo, Wing Chun, and Wushu.[citation needed] One of the most popular film stars in Asia of the early 2000s, Yen is consistently one of the highest-paid actors in Asia.[7] Yen earned HK 220 million (US 28.4 million) from four films and six advertisements in 2013.[8]"
                          "Yen is credited by many for contributing to the popularisation of Wing Chun in China.[9][10] He portrays Wing Chun grandmaster Ip Man in the Ip Man film series, which has garnered box office success and led to an increase in the number of people taking up Wing Chun, with hundreds of new Wing Chun schools being opened up in mainland China and other parts of Asia. Ip Chun, the eldest son of Ip Man, even mentioned that he is grateful to Yen for making his family's art popular and allowing his father's legacy to be remembered.[11] He has also gained international recognition for playing Chirrut Îmwe in Rogue One (2016) and Xiang in XXX: Return of Xander Cage (2017), as well as Commander Tung in Mulan (2020) and Caine in John Wick: Chapter 4 (2023).",
                            style: TextStyle(color: Colors.grey,fontSize: 10,),),
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: const Text('More Information',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,),),
                        ),
                        const Divider(
                          color: Colors.white,
                          indent: 13,
                          endIndent: 13,
                          height: 5,
                          thickness: 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text("Place Of Birth",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                                Text("Birthday",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                                Text("Deadday",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                                Text("Gender",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                                Text("Popularity",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text("Yen Chi-tan",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                                Text("27 July 1963",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                                Text("-",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                                Text("Male",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                                Text("545448",style: TextStyle(color: Colors.grey,fontSize: 15,),),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(10),
                          child: const Text('Known For',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18,),),
                        ),
                        const Divider(
                          color: Colors.white,
                          indent: 13,
                          endIndent: 13,
                          height: 5,
                          thickness: 2,
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
                      ],

                    ),
                  ]

              )
          )

      ),
    );
  }
}
