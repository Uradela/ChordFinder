import 'package:flutter/material.dart';

class ChordE extends StatefulWidget {
  @override
  State<ChordE> createState() => _ChordEState();
}

class _ChordEState extends State<ChordE> with SingleTickerProviderStateMixin {
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
          title: Text("CHORD E"),
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
                Tab(text: "E"),
                Tab(text: "E-5"),
                Tab(text: "E-7"),
                Tab(text: "E-7#9"),
                Tab(text: "E-7sus4"),
                Tab(text: "E-9"),
                Tab(text: "E-add9"),
                Tab(text: "E-m"),
                Tab(text: "E-m7"),
                Tab(text: "E-maj7"),
                Tab(text: "E-sus2"),
                Tab(text: "E-sus4"),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    child: Image.asset('Images/E/E.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/E/E5.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/E/E7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/E/E7#9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/E/E7sus4.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/E/E9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/E/Eadd9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/E/Em.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/E/Em7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/E/Emaj7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/E/Esus2.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/E/Esus4.jpg'),
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
