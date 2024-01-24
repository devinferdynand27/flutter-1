import 'package:flutter/material.dart';

class BelajarListSparated extends StatelessWidget {
  BelajarListSparated({super.key});

  final ColorList = [Colors.red, Colors.blue, Colors.pink];
  final TextList = ['Partai Banteng', 'Partai Pan', 'Partai Gemoy'];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: ListView.separated(
        itemCount: ColorList.length,
        separatorBuilder: (context, index) {
          return Divider(
            color: const Color.fromARGB(255, 167, 13, 13),
          );
        },
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
