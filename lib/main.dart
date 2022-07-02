import 'package:flutter/material.dart';
import 'weekly_task.dart';
import 'daily_task.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Map map_weekly_name = {
    0: {"Subject": "", "Unit": "", "Divid": ""},
    1: {"Subject": "", "Unit": "", "Divid": ""},
    2: {"Subject": "", "Unit": "", "Divid": ""},
    3: {"Subject": "", "Unit": "", "Divid": ""},
    4: {"Subject": "", "Unit": "", "Divid": ""},
    5: {"Subject": "", "Unit": "", "Divid": ""},
    6: {"Subject": "", "Unit": "", "Divid": ""},
    7: {"Subject": "", "Unit": "", "Divid": ""},
    8: {"Subject": "", "Unit": "", "Divid": ""},
    9: {"Subject": "", "Unit": "", "Divid": ""},
    10: {"Subject": "", "Unit": "", "Divid": ""},
  };
  Map map_daily_name = {
    0: {"Subject": "", "Unit": "", "Divid": ""},
    1: {"Subject": "", "Unit": "", "Divid": ""},
    2: {"Subject": "", "Unit": "", "Divid": ""},
    3: {"Subject": "", "Unit": "", "Divid": ""},
    4: {"Subject": "", "Unit": "", "Divid": ""},
    5: {"Subject": "", "Unit": "", "Divid": ""},
    6: {"Subject": "", "Unit": "", "Divid": ""},
    7: {"Subject": "", "Unit": "", "Divid": ""},
    8: {"Subject": "", "Unit": "", "Divid": ""},
    9: {"Subject": "", "Unit": "", "Divid": ""},
    10: {"Subject": "", "Unit": "", "Divid": ""},
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(map_weekly_name,map_daily_name),
      routes: {
        "/Home": (context) => Home(map_weekly_name,map_daily_name),
        "/WeeklyTask": (BuildContext context) => WeeklyTask(),
        "/DailyTask": (BuildContext context) => DailyTask(map_weekly_name),
      },
    );
  }
}

class Home extends StatefulWidget {
  Home(this.map_weekly_name, this.map_daily_name);
  Map map_weekly_name;
  Map map_daily_name;

  @override
  State<Home> createState() => _HomeState(map_weekly_name,map_daily_name);
}

class _HomeState extends State<Home> {
  _HomeState(this.map_weekly_name,this.map_daily_name);
  Map map_weekly_name;
  Map map_daily_name;
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
      body: ListView.builder(
        itemCount: map_weekly_name.length, // moviesの長さだけ表示
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: ListTile(
              title: Text('${map_weekly_name[index]['Subject']}'), // タイトル
              subtitle: Text(
                  '単元:${map_weekly_name[index]["Unit"]}'), // 興行収入
            ),
          );
        },
      ),
    );
  }
}
