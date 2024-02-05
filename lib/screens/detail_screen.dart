import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class DetailNaturaleScreen extends StatelessWidget {
  var nama;
  var kota;
  var image;
  var desc;

  DetailNaturaleScreen({
    super.key,
    required this.nama,
    required this.kota,
    required this.image,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Detail"),
      ),
      body: SafeArea(
          child: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                "$nama - $kota",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              height: 300,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: 24,
            ),
            Expanded(
                child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width: displayWidth(context) * 0.95,
                  height: 300,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "$desc",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: "DancingScript",
                        fontSize: 14),
                  ),
                )
              ],
            ))
          ],
        ),
      )),
    );
  }
}
