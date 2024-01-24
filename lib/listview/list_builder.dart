import 'package:flutter/material.dart';

class BelajarListBuilder extends StatelessWidget {
  BelajarListBuilder({super.key});

  final ColorList = [Colors.red, Colors.blue, Colors.pink];
  final TextList = ['Partai Bantengss', 'Partai Pan', 'Partai Gemoy'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 3,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(10),
            height: 300,
            width: 200,
            color: ColorList[index],
            child: Center(
              child: Text(TextList[index]),
            ),
          );
        },
      ),
    );
  }
}
