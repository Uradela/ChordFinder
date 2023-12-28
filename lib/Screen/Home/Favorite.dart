import 'dart:async';
import 'package:chord_finder/color_utils.dart';
import 'package:chord_finder/Screen/Home/Song_Detail.dart';
import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  int _currentIndex = 0;
  PageController _pageController = PageController();
  Timer? _timer;

  List<Map<String, String>> _songList = [
    {"title": "Balonku Ada Lima", "image": "Images/song1.jpg"},
  ];
  Map<String, String> _songImages = {
    "Balonku Ada Lima": "Images/Lagu/balon.jpeg",
  };

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor("B8BAEF"),
              hexStringToColor("7276E0"),
              hexStringToColor("141CCC"),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,
              centerTitle: true,
              title: Text(
                'Favorite Song',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: _songList.length,
              itemBuilder: (context, index) {
                String songTitle = _songList[index]['title'] ?? '';
                String imagePath = _songList[index]['image'] ?? '';
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SongImagePage(
                          songTitle: songTitle,
                          imagePath: _songImages[songTitle] ?? '',
                        ),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    title: Text(songTitle),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SongImagePage extends StatelessWidget {
  final String songTitle;
  final String imagePath;

  const SongImagePage({required this.songTitle, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 1,
        title: Text(songTitle),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              hexStringToColor("B8BAEF"),
              hexStringToColor("7276E0"),
              hexStringToColor("141CCC"),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: kToolbarHeight, // Adjust the height to your liking
            ),
            Expanded(
              child: Center(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
