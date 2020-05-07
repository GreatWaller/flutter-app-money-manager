import 'package:flutter/material.dart';
import 'package:spend_book/timeline_body.dart';

class TimelinePage extends StatefulWidget {
  TimelinePage({Key key}) : super(key: key);
  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage>
    with SingleTickerProviderStateMixin {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'LEFT'),
    Tab(text: 'MiddleLeft'),
    Tab(text: 'Middle'),
    Tab(text: 'MiddleRight'),
    Tab(text: 'RIGHT'),
  ];
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: myTabs.length - 1,
      vsync: this,
      length: myTabs.length,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Time Line"),
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          tabs: myTabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: myTabs.map((Tab tab) {
          // final String label = tab.text.toLowerCase();
          return TimelineBody();
        }).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => setState(() {
          // _count++;
        }),
        // tooltip: 'Increment Counter',
        child: Icon(Icons.add),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
