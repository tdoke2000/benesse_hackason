import 'package:flutter/material.dart';

List<List<String>> List_Weekly = [
  ["", "", ""]
];

class WeeklyPage extends StatefulWidget {
  WeeklyPage(this.List_Weekly);
  final List<List<String>> List_Weekly;

  @override
  State<WeeklyPage> createState() => _WeeklyPageState(List_Weekly);
}

class _WeeklyPageState extends State<WeeklyPage> {
  _WeeklyPageState(this.List_Weekly);
  final List<List<String>> List_Weekly;
  var _isChecked = List.filled(20, false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF8A00),
        title: Text("Weekly task"),
      ),
      body: ListView.builder(
        itemCount: List_Weekly.length - 1, // moviesの長さだけ表示
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: CheckboxListTile(
              // leading: Checkbox(
              //   value: isChecked,
              //   onChanged: (value) {
              //     setState(
              //       () {
              //         isChecked = value!;
              //         isChecked2 = value!;
              //         isChecked3 = value!;
              //       },
              //     );
              //   },
              // ),

              title: Text('科目${List_Weekly[index + 1][0]}'), // 科目
              subtitle: Text('単元:${List_Weekly[index + 1][1]}'), // 単元
              //trailing: Text('1/${List_Weekly[index + 1][2]}'),
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
                Navigator.of(context).pushNamed("/timer_music");
              },
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.access_time),
      //       label: 'timer',
      //     ),
      //   ],
      //   onTap: (int index) {},
      // ),
    );
  }
}
