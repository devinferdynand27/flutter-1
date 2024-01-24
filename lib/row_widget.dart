import 'package:flutter/material.dart';

class BelajarRow extends StatelessWidget {
  const BelajarRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text("isi row data 1"),
        Text("isi Rowdata 2"),
        Text("isi Rowdata 3"),
      ],
    );
  }
}
