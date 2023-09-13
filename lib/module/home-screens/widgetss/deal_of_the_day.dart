import 'package:flutter/material.dart';
import 'package:pro/constants/global_box.dart';

class DealOfTheDay extends StatefulWidget {
  const DealOfTheDay({super.key});

  @override
  State<DealOfTheDay> createState() => _DealOfTheDayState();
}

class _DealOfTheDayState extends State<DealOfTheDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: Color.fromARGB(255, 254, 253, 253),
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: Text(
            // '\u{20B9}${78}',
            'Starting \u{20B9} 99 | Deals on Medicine,Lab Tests,Mental Tests & more..',
            style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(187, 218, 230, 143),
              Color.fromARGB(197, 179, 41, 206),
              Color.fromARGB(143, 40, 233, 156),
            ], stops: [
              0.2,
              0.5,
              1.0,
            ]),
          ),
          child: Column(
            children: [
              Image.asset(
                'asset/icon/food.png',
                height: 185,
                fit: BoxFit.fitHeight,
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.symmetric(horizontal: 31),
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 75, 2, 246),
                    Color.fromARGB(197, 240, 200, 224),
                    Color.fromARGB(255, 255, 255, 255),
                  ], stops: [
                    0.2,
                    0.5,
                    1.0,
                  ]),
                ),
                child: Row(
                  children: [
                    const Text(
                      '\u{20B9} 499 and under ',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    const Text(
                      'Deal Of The Day ',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 191, 19, 19),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 22,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'asset/icon/images.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'asset/icon/images.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'asset/icon/images.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'asset/icon/images.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'asset/icon/gym_icon.png',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'asset/icon/images.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'asset/icon/gym_icon.png',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'asset/icon/images.jpg',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              SizedBox(
                width: 10,
              ),
              Image.asset(
                'asset/icon/gym_icon.png',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.asset(
                'asset/icon/gym_icon.png',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.asset(
                'asset/icon/gym_icon.png',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.asset(
                'asset/icon/gym_icon.png',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
              Image.asset(
                'asset/icon/gym_icon.png',
                fit: BoxFit.fitWidth,
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 12).copyWith(right: 12),
          alignment: Alignment.topRight,
          child: Text(
            'See more deals',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ),
      ],
    );
  }
}
