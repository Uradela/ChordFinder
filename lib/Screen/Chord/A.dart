import 'package:flutter/material.dart';

class ChordA extends StatefulWidget {
  @override
  State<ChordA> createState() => _ChordAState();
}

class _ChordAState extends State<ChordA> with SingleTickerProviderStateMixin {
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
          title: Text("CHORD A"),
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
                Tab(text: "A"),
                Tab(text: "A-5"),
                Tab(text: "A-7"),
                Tab(text: "A-7#9"),
                Tab(text: "A-7sus4"),
                Tab(text: "A-9"),
                Tab(text: "A-add9"),
                Tab(text: "A-m"),
                Tab(text: "A-m7"),
                Tab(text: "A-maj7"),
                Tab(text: "A-sus2"),
                Tab(text: "A-sus4"),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    child: Image.asset('Images/A/A1.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/A/A5.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/A/A7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/A/A7#9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/A/A7sus4.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/A/A9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/A/Aadd9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/A/Am.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/A/Am7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/A/Amaj7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/A/Asus2.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/A/Asus4.jpg'),
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
