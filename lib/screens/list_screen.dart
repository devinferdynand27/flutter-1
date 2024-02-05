import 'package:belajar/screens/detail_screen.dart';
import 'package:flutter/material.dart';
import '../helpers/size_helper.dart';

class ListScreen extends StatelessWidget {
  ListScreen({super.key});
  //  final List<Map<String, dynamic>>
  var pemandangan = [
    {
      "nama": "Gunung Tangkuban Perahu",
      "kota": "Bandung",
      "image": "images/gambar1.png",
      "desc":
          "Gunung Tangkuban Perahu di Jawa Barat menawarkan kawah unik dengan bentuk kerucut terbalik yang memukau. Destinasi ini, mudah diakses dari Kota Bandung, menarik pengunjung dengan pemandangan spektakuler dan sejarah vulkanologi yang menarik. Keindahan alam dan geologi yang singkat namun memukau membuat Gunung Tangkuban Perahu menjadi tujuan wisata yang populer ."
    },
    {
      "nama": "Camp Rancaupass",
      "kota": "Bandung",
      "image": "images/gambar2.jpg",
      "desc":
          "Camp Rancaupas, sebuah destinasi rekreasi di Jawa Barat, menawarkan pengalaman berkemah yang seru dan menyegarkan. Terletak dekat Kota Bandung, camp ini memikat para pengunjung dengan suasana alam yang asri dan udara pegunungan yang segar. "
    },
    {
      "nama": "City Light",
      "kota": "Bandung",
      "image": "images/gambar3.jpg",
      "desc":
          "City Lightmengacu pada pemandangan malam di Bandung, kota ini terkenal dengan suasana malam yang indah, dengan gedung-gedung tinggi, jalan-jalan yang bercahaya, dan hiasan lampu kota yang menarik. Kawasan seperti Jalan Braga, Alun-Alun Bandung, atau Dago Street sering menjadi tempat populer untuk menikmati pemandangan malam di kota ini."
    },
    {
      "nama": "Hino Estetik",
      "kota": "Bandung",
      "image": "images/gambar4.jpg",
      "desc":
          "HinoHIls pada pemandangan malam di Bandung, kota ini terkenal dengan suasana malam yang indah, dengan gedung-gedung tinggi, jalan-jalan yang bercahaya, dan hiasan lampu kota yang menarik. Kawasan seperti Jalan Braga, Alun-Alun Bandung, atau Dago Street sering menjadi tempat populer untuk menikmati pemandangan malam di kota ini."
    },
    {
      "nama": "Taman Love",
      "kota": "Bandung",
      "image": "images/gambar5.jpg",
      "desc":
          "Taman Love pada pemandangan malam di Bandung, kota ini terkenal dengan suasana malam yang indah, dengan gedung-gedung tinggi, jalan-jalan yang bercahaya, dan hiasan lampu kota yang menarik. Kawasan seperti Jalan Braga, Alun-Alun Bandung, atau Dago Street sering menjadi tempat populer untuk menikmati pemandangan malam di kota ini."
    }
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        // decoration: const BoxDecoration(
        //     image: DecorationImage(
        //         image: AssetImage("images/gambar2.jpg"), fit: BoxFit.cover)),
        child: ListView.builder(
          itemCount: pemandangan.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailNaturaleScreen(
                      nama: pemandangan[index]['nama'],
                      kota: pemandangan[index]['kota'],
                      image: pemandangan[index]['image'],
                      desc: pemandangan[index]['desc'],
                    ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 200,
                // height: displayHeight(context) * 0.25,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage("${pemandangan[index]['image']}"),
                        fit: BoxFit.cover)),
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black),
                  child: Text(
                    "${pemandangan[index]["nama"]} - ${pemandangan[index]['kota']}",
                    textAlign: TextAlign.justify,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
