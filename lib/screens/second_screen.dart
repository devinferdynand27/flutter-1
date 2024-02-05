import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Text("Second Screen")),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Ini Adalah Halaman ke 2"),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                color: Colors.blue,
                margin: EdgeInsets.all(10),
                width: 200,
                height: 100,
                child: Center(
                    child: Text(
                  "back",
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
