import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SongDetailPage extends StatelessWidget {
  final String songTitle;

  const SongDetailPage({required this.songTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Song Detail'),
      ),
      body: Center(
        child: Text(songTitle),
      ),
    );
  }
}
