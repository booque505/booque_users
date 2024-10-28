import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  const Carousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
          height: MediaQuery.of(context).size.height / 4,
          autoPlay: true,
          viewportFraction: 1,
          ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                      image: AssetImage(
                        "assets/placeholder/splash_placeholder.png",
                      ),
                      fit: BoxFit.cover)),
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            );
          },
        );
      }).toList(),
    );
  }
}
