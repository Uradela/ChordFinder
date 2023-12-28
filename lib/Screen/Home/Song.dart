import 'dart:async';
import 'package:chord_finder/Screen/Home/Song_Detail.dart';
import 'package:chord_finder/color_utils.dart';
import 'package:flutter/material.dart';

class ListSongPage extends StatefulWidget {
  @override
  _ListSongPageState createState() => _ListSongPageState();
}

class _ListSongPageState extends State<ListSongPage> {
  int _currentIndex = 0;
  PageController _pageController = PageController();
  Timer? _timer;

  List<Map<String, String>> _songList = [
    {"title": "Balonku Ada Lima", "image": "Images/song1.jpg"},
    {"title": "Naik Kereta Api", "image": "Images/song2.jpg"},
    {"title": "Bangun Tidur Kuterus Mandi", "image": "Images/song3.jpg"},
  ];

  Map<String, String> _songImages = {
    "Balonku Ada Lima": "Images/Lagu/balon.jpeg",
    "Naik Kereta Api": "Images/Lagu/kereta.jpeg",
    "Bangun Tidur Kuterus Mandi": "Images/Lagu/bangun.jpeg",
  };

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      if (_currentIndex < _songList.length - 1) {
        _currentIndex++;
      } else {
        _currentIndex = 0;
      }
      _pageController.animateToPage(
        _currentIndex,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      setState(() {}); // Trigger rebuild to update the displayed title
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

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
                'List Song',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 200,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
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
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(imagePath),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          imagePath,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                itemCount: _songList.length,
              ),
            ),
            SizedBox(height: 20),
            AnimatedSwitcher(
              duration: Duration(milliseconds: 500),
              child: Text(
                _songList[_currentIndex]['title'] ?? '',
                key: ValueKey<int>(_currentIndex),
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Trending Now!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
