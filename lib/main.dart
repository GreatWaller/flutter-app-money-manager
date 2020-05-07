import 'package:flutter/material.dart';
import 'package:spend_book/tab_page.dart';
import 'package:spend_book/timelient_page.dart';
import 'package:spend_book/timeline_body.dart';
// import 'package:spend_book/tab_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spend',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: "hello xuan"),
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => MyTabbedPage(),
      //   '/timeline': (context) => TabBody(),
      // },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  final _pages = [
    MyTabbedPage(),
    TimelinePage(),
    TimelineBody(),
  ];

  void onTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: _selectedIndex == 0
      //       ? const Text("Main Page")
      //       : const Text("Timeline"),
      // ),
      backgroundColor: Colors.blueGrey,
      // body: _pages[_selectedIndex],
      body: SafeArea(
          child: IndexedStack(
        index: _selectedIndex,
        children: <Widget>[..._pages],
      )),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                size: 30.0,
              ),
              title: Text('1')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.work,
                size: 30.0,
              ),
              title: Text('2')),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.menu,
                size: 30.0,
              ),
              title: Text('3')),
        ],
        onTap: onTapped,
      ),
    );
  }
}
