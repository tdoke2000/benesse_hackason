import 'package:benesse_hackason/weekly_page.dart';
import 'package:flutter/material.dart';
import 'main.dart';

List<List<String>> List_Weekly = [
  ["", "", ""]
];

class WeeklyTask extends StatefulWidget {
  const WeeklyTask({Key? key}) : super(key: key);

  @override
  State<WeeklyTask> createState() => _WeeklyTaskState();
}

class _WeeklyTaskState extends State<WeeklyTask> {
  List<String> List_cont = ["", "", ""];

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
                List_cont.clear();
                List_cont.addAll([_Sub, _Uni, _Div]);

                List_Weekly.add(List_cont);
              },
            ),
            ElevatedButton(
              child: Text("決定"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        WeeklyPage(List_Weekly),
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
