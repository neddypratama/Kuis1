import 'dart:ui';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/logo.png',
          width: 80,
          height: 30,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.radio_button_checked,
              color: Colors.blue,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            alignment: Alignment.centerLeft,
            child: Text(
              'Livescore',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Icon(
              Icons.menu,
            ),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            height: 390,
            color: const Color.fromARGB(255, 255, 102, 0),
            alignment: Alignment.topCenter,
            child: Container(
              constraints: BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('images/photo1.jpeg'),
                ),
              ),
              alignment: Alignment.bottomLeft,
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 0.5),
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.0)),
                  child: Text(
                    'Sejelek-Jeleknya Tim, Tak Ada Yang Sejelek Chelsea!',
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 60,
            color: const Color.fromARGB(255, 255, 102, 0),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: Text(
                    'MATCH',
                    style: TextStyle(
                        fontFamily: "Serif",
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const VerticalDivider(
                  width: 20,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.black,
                ),
                Container(
                  width: 300,
                  child: Text(
                    'La Liga : Bayern Munchen 2 - 0 Borussia Dortmund',
                    style: TextStyle(
                        fontFamily: "Serif",
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.normal),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 0),
            color: Colors.black,
            child: Row(
              children: [
                Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 90,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(1)),
                        child: Text(
                          'Liga Premier',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        margin: EdgeInsets.all(10),
                        child: Text(
                          'TERNYATA! Gol Luis Diaz Ke Gawang Tottenham Hotspur Harusnya SAH! Liverpool Rugi...',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                          maxLines: 3,
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 200,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Row(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 0),
                                      child: Icon(Icons.schedule),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '9h',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 0),
                                      child: Icon(Icons.chat),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '9',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: 150,
                  height: 150,
                  child: Image(
                      image: NetworkImage(
                          'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt530832e7b272e398/6518789b3fd92253b2cfc9b4/GettyImages-1709947837.jpg?auto=webp&format=pjpg&width=1200&quality=60')),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 0),
            color: Colors.black,
            child: Row(
              children: [
                Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 90,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(1)),
                        child: Text(
                          'Liverpool FC',
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 200,
                        margin: EdgeInsets.all(10),
                        child: Text(
                          'Gary Neville: Pernyataan Resmi Liverpool BAHAYA!',
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                          maxLines: 3,
                        ),
                      ),
                      Container(
                        height: 25,
                        width: 200,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              child: Row(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 0),
                                      child: Icon(Icons.schedule),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '2h',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20, right: 20),
                              child: Row(
                                children: [
                                  Container(
                                    child: Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 0),
                                      child: Icon(Icons.chat),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(left: 10),
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: 150,
                  height: 150,
                  child: Image(
                      image: NetworkImage(
                          'https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/blt8fa7835b975cde40/6519e920cc3b4f7c8b958d09/GOAL_-_Multiple_Images_-_3_Stacked_-_Facebook_-_2023-10-01T224737.851.jpg?auto=webp&format=pjpg&width=1080&quality=60')),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Column(
              children: [
                Container(
                  color: Colors.black,
                  child: Row(
                    children: [
                      Container(
                        height: 30,
                        width: 180,
                        alignment: Alignment.topLeft,
                        margin: EdgeInsets.only(left: 10, top: 5),
                        child: Text(
                          'Berita Terbaru',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 180,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          'Lihat Semua',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 400,
                              height: 30,
                              margin: EdgeInsets.only(left: 10),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                '20 menit yang lalu',
                                style: TextStyle(
                                    fontSize: 13, fontWeight: FontWeight.w400),
                              ),
                            ),
                            Container(
                              width: 400,
                              height: 50,
                              margin: EdgeInsets.only(left: 10),
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'PANAS! Bintang Liverpool & Tottenham Berantem Di Medsos Usai Blunder VAR',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w500),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 1),
                        color: Colors.black,
                        child: Column(children: [
                          Container(
                            width: 400,
                            height: 30,
                            margin: EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '2 jam yang lalu',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            width: 400,
                            height: 50,
                            margin: EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Liverpool KECAM Badan Wasit Inggris Atas Alasan Tidak Jelas Terkait Eror',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ]),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 1),
                        color: Colors.black,
                        child: Column(children: [
                          Container(
                            width: 400,
                            height: 30,
                            margin: EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '3 jam yang lalu',
                              style: TextStyle(
                                  fontSize: 13, fontWeight: FontWeight.w400),
                            ),
                          ),
                          Container(
                            width: 400,
                            height: 50,
                            margin: EdgeInsets.only(left: 10),
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Peran Esensial Adrien Rabiot Bagi Juventus, Tak Ada Gelandang Serie A Mana Pun Bisa Menirunya',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
