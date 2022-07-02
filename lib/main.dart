import 'package:flutter/material.dart';
import 'weekly_task.dart';
import 'daily_task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  List<String> List_Weekly = ["","",""];
  List<String> List_Daily=["","",""];


  // Map List_Weekly = {
  //   0: {"Subject": "", "Unit": "", "Divid": ""},
  //   1: {"Subject": "", "Unit": "", "Divid": ""},
  //   2: {"Subject": "", "Unit": "", "Divid": ""},
  //   3: {"Subject": "", "Unit": "", "Divid": ""},
  //   4: {"Subject": "", "Unit": "", "Divid": ""},
  //   5: {"Subject": "", "Unit": "", "Divid": ""},
  //   6: {"Subject": "", "Unit": "", "Divid": ""},
  //   7: {"Subject": "", "Unit": "", "Divid": ""},
  //   8: {"Subject": "", "Unit": "", "Divid": ""},
  //   9: {"Subject": "", "Unit": "", "Divid": ""},
  //   10: {"Subject": "", "Unit": "", "Divid": ""},
  // };
  // Map List_Daily = {
  //   0: {"Subject": "", "Unit": "", "Divid": ""},
  //   1: {"Subject": "", "Unit": "", "Divid": ""},
  //   2: {"Subject": "", "Unit": "", "Divid": ""},
  //   3: {"Subject": "", "Unit": "", "Divid": ""},
  //   4: {"Subject": "", "Unit": "", "Divid": ""},
  //   5: {"Subject": "", "Unit": "", "Divid": ""},
  //   6: {"Subject": "", "Unit": "", "Divid": ""},
  //   7: {"Subject": "", "Unit": "", "Divid": ""},
  //   8: {"Subject": "", "Unit": "", "Divid": ""},
  //   9: {"Subject": "", "Unit": "", "Divid": ""},
  //   10: {"Subject": "", "Unit": "", "Divid": ""},
  // };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(List_Weekly,List_Daily),
      routes: {
        "/Home": (context) => Home(List_Weekly,List_Daily),
        "/WeeklyTask": (BuildContext context) => WeeklyTask(),
        "/DailyTask": (BuildContext context) => DailyTask(),
      },
    );
  }
}

class Home extends StatefulWidget {
  Home(this.List_Weekly, this.List_Daily);
  List List_Weekly;
  List List_Daily;
  // Map List_Weekly;
  // Map List_Daily;

  @override
  State<Home> createState() => _HomeState(List_Weekly,List_Daily);
}

class _HomeState extends State<Home> {
  _HomeState(this.List_Weekly,this.List_Daily);
  List List_Weekly;
  List List_Daily;
  @override
  Widget build(BuildContext context) {
        //final String args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text('top page'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Text(
                'My App',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('今日のto do選択'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("今日のto do追加"),
              onTap: () {
                Navigator.of(context).pushNamed("/DailyTask");
              },
            ),
            ListTile(
              title: Text('1週間のto doの作成'),
              onTap: () {
                Navigator.of(context).pushNamed("/WeeklyTask");
              },
            ),
            ListTile(
              title: Text('1週間のto doの編集'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      // body:
      // ListView.builder(
      //   itemCount: List_Weekly.length, // moviesの長さだけ表示
      //   itemBuilder: (BuildContext context, int index) {
      //     return Container(
      //       child: ListTile(
      //         title: Text('${List_Weekly[index]['Subject']}'), // タイトル
      //         subtitle: Text(
      //             '単元:${List_Weekly[index]["Unit"]}'), // 興行収入
      //       ),
      //     );
      //   },
      // ),
    );
  }
}