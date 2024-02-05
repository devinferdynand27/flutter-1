import 'package:flutter/material.dart';

class ThridScreen extends StatelessWidget {
  const ThridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("thrid Screen"),
        backgroundColor: Colors.blue,
        leading: IconButton(
            color: Colors.white,
            icon: Icon(Icons.home),
            onPressed: () => Navigator.pop(context)),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini Adalah Halaman ke 3"),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/second');
                },
                child: Text("Pindah Halaman Ke 2")),
          ],
        ),
      ),
    );
  }
}
