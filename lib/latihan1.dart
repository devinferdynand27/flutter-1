import 'package:flutter/material.dart';

class Latihan1 extends StatelessWidget {
  const Latihan1({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text("apasi"),
                FlutterLogo(
                  size: 60,
                )
              ],
            ),
            Column(
              children: [
                Text("apasi"),
                FlutterLogo(
                  size: 60,
                )
              ],
            ),
          ],
        ),
        FlutterLogo(
          size: 60,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Text("apasi"),
                FlutterLogo(
                  size: 60,
                )
              ],
            ),
            Column(
              children: [
                Text("apasi"),
                FlutterLogo(
                  size: 60,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
