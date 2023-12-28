import 'package:chord_finder/Screen/Home/Chord.dart';
import 'package:chord_finder/Screen/Home/Favorite.dart';
import 'package:chord_finder/Screen/Home/Profile.dart';
import 'package:chord_finder/Screen/Home/Song.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);
  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int currentIndex = 0;
  selectWidget(index) {
    switch (index) {
      case 0:
        return const Chord();
      case 1:
        return ListSongPage();
      case 2:
        return Favorite();
      case 3:
        return ProfileScreen();

      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(
              color: Colors.black,
              width: 2.0,
            ),
          ),
        ),
        child: GNav(
          backgroundColor: Colors.blue,
          selectedIndex: currentIndex,
          tabMargin: const EdgeInsets.all(10),
          activeColor: Color.fromARGB(255, 0, 0, 0),
          color: Color.fromARGB(255, 255, 255, 255),
          tabBackgroundColor: Color.fromARGB(255, 255, 255, 255),
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          gap: 4,
          onTabChange: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: 'Chord',
            ),
            GButton(
              icon: Icons.music_note,
              text: 'Music',
            ),
            GButton(
              icon: Icons.favorite,
              text: 'Favorite',
            ),
            GButton(
              icon: Icons.person_outline,
              text: 'Profile',
            ),
          ],
        ),
      ),
      body: selectWidget(currentIndex),
    );
  }
}
