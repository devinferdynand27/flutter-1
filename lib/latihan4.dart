import 'package:flutter/material.dart';

class LisItem {
  String text;
  String ImageUrl;
  LisItem(this.text, this.ImageUrl);
}

class LisItemsGalery {
  String ImageUrls;
  LisItemsGalery(this.ImageUrls);
}

class Latihan4 extends StatelessWidget {
  Latihan4({Key? key});

  var TextList = [
    LisItem(
        "JJennie Blackpink Buat Penggemar Heboh Setelah Merayakan Ulang Tahun di Sebuah Klub di Los Angeles",
        'https://awsimages.detik.net.id/community/media/visual/2020/10/22/blackpink-promosi-lovesick-girls-di-tv-amerika-1_43.jpeg?w=1200'),
    LisItem(
        "Jennie melakukan perjalanan ke LA setelah keluar dari YG Entertainment",
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyRAA9RrSq-nnqPGxqQl7amO37FsN99sIa6ekr2Tvt3g&s'),
    LisItem(
        "- Jennie BLACKPINK dan Taehyung (V) BTS kembali dihebohkan terkait isu berpacaran. Namun, kali ini kabar  yang beredar bukan hal yang menggembirakan bagi para penggemar.",
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRyRAA9RrSq-nnqPGxqQl7amO37FsN99sIa6ekr2Tvt3g&s'),
  ];

  var Listgalery = [
    LisItemsGalery(
        'https://media.gettyimages.com/id/1482551706/photo/indio-california-jisoo-lisa-jennie-and-ros%C3%A9-of-blackpink-perform-at-the-coachella-stage.jpg?s=612x612&w=gi&k=20&c=lZtFLJ7rQGjeBBjh7-XTJfv9hraeHfN_Zpb7ZVlvtVY='),
    LisItemsGalery(
        'https://media.gettyimages.com/id/1794942234/photo/london-england-jisoo-jennie-ros%C3%A9-and-lisa-members-of-south-korean-girl-band-blackpink-attend.jpg?s=612x612&w=0&k=20&c=pob1EUkybCefok2I5iSYg6cc8N6IJBFlgnsvFwUVgzE='),
    LisItemsGalery(
        'https://media.gettyimages.com/id/1796756339/photo/london-england-lisa-rose-jisoo-kim-and-jennie-kim-from-the-k-pop-band-blackpink-pose-with.jpg?s=612x612&w=0&k=20&c=vwiq5lJK0mPmI-mbCdJC57krPzTnjGoWrMsiqQmV4Wg='),
    LisItemsGalery(
        'https://media.gettyimages.com/id/1484310044/photo/indio-california-ros%C3%A9-jennie-jisoo-and-lisa-of-blackpink-perform-at-the-coachella-stage.jpg?s=612x612&w=0&k=20&c=wcfFR1VzxP-uIknuwoo-mcxWEx75rqec2WfiY_ntSdY='),
    LisItemsGalery(
        'https://media.gettyimages.com/id/1482523168/photo/indio-california-jisoo-lisa-jennie-and-ros%C3%A9-of-blackpink-perform-at-the-coachella-stage.jpg?s=612x612&w=0&k=20&c=j2Mnj39iXydjs6zj7rLSjZ-SjI1tF5jOPTF9l935LYo='),
  ];

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
            width: double.infinity,
            height: 450,
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
            color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.all(10),
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors
                          .black, // You can change the color to your preference
                      width: 2.0, // You can adjust the width of the border
                    ),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Container(
                          width: 140,
                          height: 140,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(
                                TextList[index].ImageUrl,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 206,
                          height: 139,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: SingleChildScrollView(
                            child: Text(TextList[index].text),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            child: Text(
              "Galery",
              style: TextStyle(fontSize: 30),
            ),
            margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
          ),
          Container(
            width: double.infinity,
            height: 150,
            color: Colors.white,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage(
                        Listgalery[index].ImageUrls,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
