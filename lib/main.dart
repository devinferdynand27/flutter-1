import 'package:belajar/colum_widget.dart';
import 'package:belajar/container_widget.dart';
import 'package:belajar/latihan1.dart';
import 'package:belajar/latihan2.dart';
import 'package:belajar/latihan3.dart';
import 'package:belajar/latihan4.dart';
import 'package:belajar/listview/list_builder.dart';
import 'package:belajar/listview/list_sparated.dart';
import 'package:belajar/listview/listbasic.dart';
import 'package:belajar/row_column.dart';
import 'package:belajar/row_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "BlackPink Squad ",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.black,
          title: Text(
            "Belajar Flutter",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Latihan4(),
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('hello dunia',
          style: TextStyle(
            color: Colors.amber,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            fontStyle: FontStyle.italic,
          )),
    );
  }
}
