import 'package:flutter/material.dart';

class BelajarColumn extends StatelessWidget {
  const BelajarColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text("isi Column 1"),
        Text("isi Coumn 2"),
        Text("isi Coumn 3"),
        FlutterLogo(
          size: 50,
        )
      ],
    );
  }
}
