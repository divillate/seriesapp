import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardSwiper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.width * 0.9,
      child: Swiper(
        itemCount: 10,
        viewportFraction: 0.8,
        scale: 0.9,
        itemBuilder: (_, int index) {
          return GestureDetector(
            onTap: () => Navigator.popAndPushNamed(context, '/details',
                arguments: 'movie-instance'),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder:
                    NetworkImage('https://via.placeholder.com/300x600'),
                image: NetworkImage('https://via.placeholder.com/300x600'),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
