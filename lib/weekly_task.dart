import 'package:flutter/material.dart';
import 'main.dart';

class WeeklyTask extends StatefulWidget {
  const WeeklyTask({Key? key}) : super(key: key);

  @override
  State<WeeklyTask> createState() => _WeeklyTaskState();
}

class _WeeklyTaskState extends State<WeeklyTask> {
  List<String> List_Weekly = ["","",""];
  List<String> List_Daily=["","",""];

  String _Sub="";
  String _Uni="";
  String _Div="";

  int map_weekly_num = 0;

<<<<<<< HEAD
  // Map map_daily_name = {
  // 0: {"Subject": "", "Unit": "", "Divid": ""},
  // 1: {"Subject": "", "Unit": "", "Divid": ""},
  // 2: {"Subject": "", "Unit": "", "Divid": ""},
  // 3: {"Subject": "", "Unit": "", "Divid": ""},
  // 4: {"Subject": "", "Unit": "", "Divid": ""},
  // 5: {"Subject": "", "Unit": "", "Divid": ""},
  // 6: {"Subject": "", "Unit": "", "Divid": ""},
  // 7: {"Subject": "", "Unit": "", "Divid": ""},
  // 8: {"Subject": "", "Unit": "", "Divid": ""},
  // 9: {"Subject": "", "Unit": "", "Divid": ""},
  // 10: {"Subject": "", "Unit": "", "Divid": ""},
  // };

  // Map map_weekly_name = {
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
=======
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
>>>>>>> f9453928cb14ef58a9d9e5b508a45395574f1013
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Weekly Task'),
        ),
        body: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "科目",
                hintText: "科目",
              ),
              onChanged: (_Subject) {
                _Sub = _Subject;
              },
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "単元",
                hintText: "単元",
              ),
              onChanged: (_Unit) {
                _Uni = _Unit;
              },
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "分割数",
                hintText: "分割数",
              ),
              onChanged: (_Divided) {
                _Div = _Divided;
              },
            ),
            ElevatedButton(
              child: Text("登録"),
              onPressed: () {
                List_Weekly.addAll([_Sub,_Uni,_Div]);
                print(
                    List_Weekly.length);
              },
            ),
            ElevatedButton(
              child: Text("決定"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
<<<<<<< HEAD
                    builder: (BuildContext context) => Home(List_Weekly,List_Daily),
=======
                    builder: (BuildContext context) => Home(map_weekly_name,map_daily_name),
>>>>>>> f9453928cb14ef58a9d9e5b508a45395574f1013
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}