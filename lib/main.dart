import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('News dengan ScrollView'),
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Text('Berita Terbaru'),
                    Text('Pertandingan Hari Ini'),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: const EdgeInsets.only(
                  left: 8.0,
                  right: 8.0,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 240, 156, 255)),
                ),
                child: Column(
                  children: [
                    const Expanded(
                      flex: 4,
                      child: Image(
                        image: AssetImage('assets/picture4.jpg'),
                        fit: BoxFit.fill,
                        width: double.infinity,
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Center(
                        child: Text(
                          'Costa Mendekat ke Palmeiras',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: const Color.fromARGB(255, 240, 156, 255),
                        width: double.infinity,
                        height: double.infinity,
                        child: const Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Transfer',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: const EdgeInsets.all(8.0),
                child: LayoutBuilder(
                  builder: (BuildContext context,
                      BoxConstraints viewportConstraints) {
                    return SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: viewportConstraints.maxHeight,
                        ),
                        child: IntrinsicHeight(
                          child: Column(
                            children: <Widget>[
                              newsCard(
                                'assets/picture1.jpg',
                                'Pique Bilang Wasit Untungkan Madrid, Koeman Tepok Jidat',
                                'Barcelona Feb 13, 2021',
                              ),
                              newsCard(
                                'assets/picture2.jpg',
                                'Timnas Malaysia Naturalisasi Messi',
                                'Jakarta Feb 14, 2021',
                              ),
                              newsCard(
                                'assets/picture3.jpg',
                                'Belanda Mengontrak Tsubasa Ozora Menjadi Pelatih',
                                'Tokyou Feb 15, 2021',
                              ),
                              newsCard(
                                'assets/picture4.jpg',
                                'Arema FC Menang Melawan Persela Lamongan',
                                'Malang Feb 16, 2021',
                              ),
                              newsCard(
                                'assets/picture5.jpg',
                                'Persija Jakarta Menaturalisasi Baginda Maou Sang Raja Iblis',
                                'Jakarta Feb 17, 2021',
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded newsCard(String picture, String text, String postDate) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(bottom: 8.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Image(
                    image: AssetImage(picture.toString()),
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      text.toString(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.all(5.0),
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.black),
                ),
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(postDate.toString()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
