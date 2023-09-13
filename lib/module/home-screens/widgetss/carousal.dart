import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pro/constants/global_box.dart';

class CarouselImage extends StatelessWidget {
  const CarouselImage({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: Global_Box.carouselImages.map((i) {
        return Builder(
          builder: (context) => SizedBox(
            width: 410,
            // height: 700,
            child: Image.asset(
              i,
              fit: BoxFit.cover,
            ),
          ),
        );
      }).toList(),
      options:
          CarouselOptions(viewportFraction: 1, height: 250, autoPlay: false),
    );
  }
}
