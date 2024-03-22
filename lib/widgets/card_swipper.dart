import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwipper extends StatelessWidget {
  const CardSwipper({super.key});

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.5,
      width: double.infinity,
      child: Swiper(
        itemCount: 10,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: size.height * 0.9,
        itemBuilder: (_, int index){
          return ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: NetworkImage('https://via.placeholder.com/150x150'),
              image: NetworkImage('https://via.placeholder.com/150x150'),
              fit: BoxFit.fill,
            ),
          );
        },
      )
    );
  }
}
