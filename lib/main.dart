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
      title: "Ini Project Pertama Saya",
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.amber,
          title: Text(
            "Belajar Flutter",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: Text('hello dunia',
              style: TextStyle(
                color: Colors.amber,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
                fontStyle: FontStyle.italic,
              )),
        ),
      ),
    );
  }
}
