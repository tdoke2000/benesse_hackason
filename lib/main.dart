import 'package:flutter/material.dart';
import "daily_page.dart";
import "weekly_page.dart";
import 'weekly_task.dart';
import 'daily_task.dart';

List<List<String>> List_Weekly = [
  ["", "", ""]
];
List<List<String>> List_Daily = [
  ["", "", ""]
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(
        title: "HomePage",
      ),
      routes: {
        "/WeeklyPage": (context) => WeeklyPage(List_Weekly),
        "/DailyPage": (context) => DailyPage(List_Daily),
        "/WeeklyTask": (BuildContext context) => WeeklyTask(),
        "/DailyTask": (BuildContext context) => DailyTask(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late PageController _pageController;
  int _selectedIndex = 0;

  // ボトムメニューの遷移先画面
  var _pages = [
    WeeklyPage(List_Weekly),
    DailyPage(List_Daily),
  ];
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    //return LoginPage();

    return Scaffold(
      body: PageView(
          controller: _pageController,
          onPageChanged: _onPageChanged,
          children: _pages),
    );
  }
}
