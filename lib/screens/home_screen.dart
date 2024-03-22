import 'package:flutter/material.dart';
import 'package:movie_2/widgets/card_swipper.dart';
import 'package:movie_2/widgets/movie_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peliculas en cartelera'),
        actions: [
          IconButton(
            onPressed: (){},
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          CardSwipper(),
          MovieSlider()
        ],),
      )
    );
  }
}