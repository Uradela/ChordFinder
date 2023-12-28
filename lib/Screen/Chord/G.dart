import 'package:flutter/material.dart';

class ChordG extends StatefulWidget {
  @override
  State<ChordG> createState() => _ChordGState();
}

class _ChordGState extends State<ChordG> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 15, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text("CHORD G"),
        ),
        body: Column(
          children: [
            TabBar(
              controller: _tabController,
              labelColor: Color(0xFFE57734),
              unselectedLabelColor:
                  Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
              isScrollable: true,
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                  width: 3,
                  color: Color(0xFFE57734),
                ),
                insets: EdgeInsets.symmetric(horizontal: 16),
              ),
              labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              labelPadding: EdgeInsets.symmetric(horizontal: 20),
              tabs: [
                Tab(text: "G"),
                Tab(text: "G-5"),
                Tab(text: "G-7"),
                Tab(text: "G-7#9"),
                Tab(text: "G-7sus4"),
                Tab(text: "G-9"),
                Tab(text: "G-add9"),
                Tab(text: "G-m"),
                Tab(text: "G-m7"),
                Tab(text: "G-maj7"),
                Tab(text: "G-sus2"),
                Tab(text: "G-sus4"),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    child: Image.asset('Images/G/G.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/G/G5.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/G/G7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/G/G7#9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/G/G7sus4.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/G/G9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/G/Gadd9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/G/Gm.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/G/Gm7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/G/Gmaj7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/G/Gsus2.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/G/Gsus4.jpg'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
