import 'package:flutter/material.dart';

List<List<String>> List_Daily = [
  ["", "", ""]
];

class DailyPage extends StatefulWidget {
  DailyPage(this.List_Daily);
  final List<List<String>> List_Daily;

  @override
  State<DailyPage> createState() => _DailyPageState(List_Daily);
}

class _DailyPageState extends State<DailyPage> {
  _DailyPageState(this.List_Daily);
  final List<List<String>> List_Daily;
  var _isChecked = List.filled(20, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF8A00),
        title: Text("Daily task"),
      ),
      body: ListView.builder(
        itemCount: List_Daily.length - 1, // moviesの長さだけ表示
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: CheckboxListTile(
              title: Text('科目${List_Daily[index + 1][0]}'), // 科目
              subtitle: Text('単元:${List_Daily[index + 1][1]}'), // 単元
              //trailing: Text('1/${List_Daily[index + 1][2]}'),
              value: _isChecked[index + 1],
              onChanged: (bool? value) {
                setState(
                  () {
                    _isChecked[index + 1] = value!;
                  },
                );
              },
              controlAffinity: ListTileControlAffinity.leading,
            ),
          );
        },
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
                //color: Colors.blue,
                color: Color(0xFFFF8A00),
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
    );
  }
}
