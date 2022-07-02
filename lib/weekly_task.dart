import 'package:flutter/material.dart';
import 'main.dart';

class WeeklyTask extends StatefulWidget {
  const WeeklyTask({Key? key}) : super(key: key);

  @override
  State<WeeklyTask> createState() => _WeeklyTaskState();
}

class _WeeklyTaskState extends State<WeeklyTask> {
  // List<String> Subject = [""];
  // List<String> Unit = [""];
  // List<String> Divided_num = [""];
  int map_weekly_num = 0;

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
                map_weekly_name[map_weekly_num]["Subject"] = _Subject;
              },
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "単元",
                hintText: "単元",
              ),
              onChanged: (_Unit) {
                map_weekly_name[map_weekly_num]["Unit"] = _Unit;
              },
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "分割数",
                hintText: "分割数",
              ),
              onChanged: (_Divided) {
                map_weekly_name[map_weekly_num]["Divid"] = _Divided;
              },
            ),
            ElevatedButton(
              child: Text("登録"),
              onPressed: () {
                print(
                    "$map_weekly_num,${map_weekly_name[map_weekly_num]["Subject"]}");
                map_weekly_num++;
              },
            ),
            ElevatedButton(
              child: Text("決定"),
              onPressed: () {
                // Navigator.pushNamed(
                //   context,
                //   "/Home",
                //   arguments: "map_weekly_name",
                // );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => Home(map_weekly_name,map_daily_name),
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
