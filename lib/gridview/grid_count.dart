import 'package:flutter/material.dart';

class GridCount extends StatelessWidget {
  GridCount({super.key});
  var data = 1;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      scrollDirection: Axis.horizontal,
      children: List.generate(
          9,
          (index) => Container(
                child: Card(
                  color: const Color.fromARGB(255, 49, 47, 30),
                  child: Center(
                    child: Text("${data++}"),
                  ),
                ),
              )),
    );
  }
}
