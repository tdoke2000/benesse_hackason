import 'package:flutter/material.dart';
import 'main.dart';

class WeeklyTask extends StatefulWidget {
  const WeeklyTask({Key? key}) : super(key: key);

  @override
  State<WeeklyTask> createState() => _WeeklyTaskState();
}

class _WeeklyTaskState extends State<WeeklyTask> {
  List<String> List_Weekly = ["", "", ""];
  List<String> List_Daily = ["", "", ""];

  String _Sub = "";
  String _Uni = "";
  String _Div = "";

  int map_weekly_num = 0;

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
                List_Weekly.addAll([_Sub, _Uni, _Div]);
                print(List_Weekly.length);
              },
            ),
            ElevatedButton(
              child: Text("決定"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        Home(List_Weekly, List_Daily),
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
