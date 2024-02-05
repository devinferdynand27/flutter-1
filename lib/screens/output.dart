import 'package:flutter/material.dart';

class OutputFormScreen extends StatelessWidget {
  final String nama, jk, tanggal_lahir, agama;
  OutputFormScreen({
    Key? key,
    required this.nama,
    required this.jk,
    required this.tanggal_lahir,
    required this.agama,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('output')),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Text("Nama : $nama"),
            Text("jenis kelamin : $jk"),
            Text("tanggal lahir : $tanggal_lahir"),
            Text("Agama : $agama"),
          ],
        ),
      ),
    );
  }
}
