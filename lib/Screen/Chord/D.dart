import 'package:flutter/material.dart';

class ChordD extends StatefulWidget {
  @override
  State<ChordD> createState() => _ChordDState();
}

class _ChordDState extends State<ChordD> with SingleTickerProviderStateMixin {
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
          title: Text("CHORD D"),
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
                Tab(text: "D"),
                Tab(text: "D-5"),
                Tab(text: "D-7"),
                Tab(text: "D-7#9"),
                Tab(text: "D-7sus4"),
                Tab(text: "D-9"),
                Tab(text: "D-add9"),
                Tab(text: "D-m"),
                Tab(text: "D-m7"),
                Tab(text: "D-maj7"),
                Tab(text: "D-sus2"),
                Tab(text: "D-sus4"),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    child: Image.asset('Images/D/D.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/D/D5.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/D/D7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/D/D7#9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/D/D7sus4.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/D/D9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/D/Dadd9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/D/Dm.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/D/Dm7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/D/Dmaj7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/D/Dsus2.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/D/Dsus4.jpg'),
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
