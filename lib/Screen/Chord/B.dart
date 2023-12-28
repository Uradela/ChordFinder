import 'package:flutter/material.dart';

class ChordB extends StatefulWidget {
  @override
  State<ChordB> createState() => _ChordBState();
}

class _ChordBState extends State<ChordB> with SingleTickerProviderStateMixin {
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
          title: Text("CHORD B"),
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
                Tab(text: "B"),
                Tab(text: "B-5"),
                Tab(text: "B-7"),
                Tab(text: "B-7#9"),
                Tab(text: "B-7sus4"),
                Tab(text: "B-9"),
                Tab(text: "B-add9"),
                Tab(text: "B-m"),
                Tab(text: "B-m7"),
                Tab(text: "B-maj7"),
                Tab(text: "B-sus2"),
                Tab(text: "B-sus4"),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    child: Image.asset('Images/B/B.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/B/B5.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/B/B7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/B/B7#9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/B/B7sus4.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/B/B9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/B/Badd9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/B/Bm.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/B/Bm7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/B/Bmaj7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/B/Bsus2.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/B/Bsus4.jpg'),
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
