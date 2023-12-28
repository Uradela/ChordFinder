import 'package:flutter/material.dart';

class ChordC extends StatefulWidget {
  @override
  State<ChordC> createState() => _ChordCState();
}

class _ChordCState extends State<ChordC> with SingleTickerProviderStateMixin {
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
          title: Text("CHORD C"),
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
                Tab(text: "C"),
                Tab(text: "C-5"),
                Tab(text: "C-7"),
                Tab(text: "C-7#9"),
                Tab(text: "C-7sus4"),
                Tab(text: "C-9"),
                Tab(text: "C-add9"),
                Tab(text: "C-m"),
                Tab(text: "C-m7"),
                Tab(text: "C-maj7"),
                Tab(text: "C-sus2"),
                Tab(text: "C-sus4"),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Container(
                    child: Image.asset('Images/C/C.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/C/c5.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/C/C7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/C/C7#9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/C/C7sus4.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/C/C9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/C/Cadd9.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/C/Cm.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/C/Cm7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/C/Cmaj7.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/C/Csus2.jpg'),
                  ),
                  Container(
                    child: Image.asset('Images/C/Csus4.jpg'),
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
