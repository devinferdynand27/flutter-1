import 'package:flutter/material.dart';

class Latihan3 extends StatelessWidget {
  const Latihan3({Key? key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 180,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                  "https://akcdn.detik.net.id/visual/2023/04/04/blackpink-the-game_169.jpeg?w=650",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            width: double.infinity,
            height: 180,
            color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSvENv73uSetF069CpOxQ5mepGpST4UeK2NtA&usqp=CAU",
                    width: 150),
                Container(
                  child: Column(
                    children: [
                      Text(
                        "Tentang Kami",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Text(""),
                      Text(
                        "Blackpink Adalah Orang Yang Saya  mnyukai \nDengan Menurut Kamus Besar  Bahasa \nIndonesia (KBBI) Menurut Kamus Besar \nbahasa Indonesia (KBBI) \nmenurut Kamus Besar Bahasa Indonesia (KBBI)",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Galery Blackpink",
                      style: TextStyle(fontSize: 20, fontFamily: 'MyFont'),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/04/16/blackpink-blink-862145238.png",
                  height: 100,
                ),
                Image.network(
                  "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/04/16/blackpink-blink-862145238.png",
                  height: 100,
                ),
                Image.network(
                  "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/04/16/blackpink-blink-862145238.png",
                  height: 100,
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/04/16/blackpink-blink-862145238.png",
                  height: 100,
                ),
                Image.network(
                  "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/04/16/blackpink-blink-862145238.png",
                  height: 100,
                ),
                Image.network(
                  "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/04/16/blackpink-blink-862145238.png",
                  height: 100,
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/04/16/blackpink-blink-862145238.png",
                  height: 100,
                ),
                Image.network(
                  "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/04/16/blackpink-blink-862145238.png",
                  height: 100,
                ),
                Image.network(
                  "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/04/16/blackpink-blink-862145238.png",
                  height: 100,
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/04/16/blackpink-blink-862145238.png",
                  height: 100,
                ),
                Image.network(
                  "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/04/16/blackpink-blink-862145238.png",
                  height: 100,
                ),
                Image.network(
                  "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/04/16/blackpink-blink-862145238.png",
                  height: 100,
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.network(
                  "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/04/16/blackpink-blink-862145238.png",
                  height: 100,
                ),
                Image.network(
                  "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/04/16/blackpink-blink-862145238.png",
                  height: 100,
                ),
                Image.network(
                  "https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2023/04/16/blackpink-blink-862145238.png",
                  height: 100,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
