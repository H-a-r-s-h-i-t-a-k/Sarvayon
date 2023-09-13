import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro/constants/global_box.dart';

class TopCateg extends StatelessWidget {
  const TopCateg({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: Global_Box.categoryImages.length,
        itemExtent: 75,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                // color: Color.fromARGB(99, 214, 159, 233),
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: ClipRect(
                    child: Image.asset(
                  Global_Box.categoryImages[index]['image']!,
                  fit: BoxFit.cover,
                  // height: 40,
                  width: 40,
                )),
              ),
              Text(
                Global_Box.categoryImages[index]['title']!,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              )
            ],
          );
        },
      ),
    );
  }
}
