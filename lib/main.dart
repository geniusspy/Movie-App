// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:movie_app/pages/moive_app.dart';


void main() {
  runApp(const Myapp());
}

////State

///Widget

////StateLess

////StateFul

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
      // home: MoviePage(),
      // home: ActorProfile(),
    );
  }
}