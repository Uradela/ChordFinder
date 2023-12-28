import 'package:flutter/material.dart';

class ChordF extends StatefulWidget {
  @override
  State<ChordF> createState() => _ChordFState();
}

class _ChordFState extends State<ChordF> with SingleTickerProviderStateMixin {
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
          title: Text("CHORD F"),
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
                Tab(text: "F"),
                Tab(text: "F-5"),
                Tab(text: "F-7"),
                Tab(text: "F-7#9"),
                Tab(text: "F-7sus4"),
                Tab(text: "F-9"),
                Tab(text: "F-add9"),
                Tab(text: "F-m"),
                Tab(text: "F-m7"),
                Tab(text: "F-maj7"),
                Tab(text: "F-sus2"),
                Tab(text: "F-sus4"),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    child: Image.asset('Images/F/F.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/F/F5.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/F/F7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/F/F7#9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/F/F7sus4.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/F/F9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/F/Fadd9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/F/Fm.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/F/Fm7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/F/Fmaj7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/F/Fsus2.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/F/Fsus4.jpg'),
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
