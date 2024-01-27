import 'package:flutter/material.dart';

class LatihanGrid extends StatelessWidget {
  LatihanGrid({super.key});
  var data = 1;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 400,
            child: GridView.count(
              crossAxisCount: 3,
              scrollDirection: Axis.horizontal,
              children: List.generate(
                  26,
                  (index) => Container(
                        child: Card(
                          color: Color.fromARGB(255, 245, 221, 5),
                          child: Center(
                            child:
                                Text("${String.fromCharCode(64 + (data++))}"),
                          ),
                        ),
                      )),
            ),
          ),
          Container(
              child: Column(
            children: List.generate(
                3,
                (index) => Container(
                      child: Container(
                        color: Colors.pink,
                        margin: EdgeInsets.all(10),
                        height: 400,
                        child: Center(
                          child: FlutterLogo(
                            size: 100,
                          ),
                        ),
                      ),
                    )),
          ))
        ],
      ),
    );
  }
}
