import 'package:flutter/material.dart';
import 'dart:async';
import 'main.dart';

class CountdownPage extends StatefulWidget {
  CountdownPage(this.List_Weekly,this.List_Daily);
  List<String> List_Weekly;
  List<String> List_Daily;

  @override
  State<CountdownPage> createState() => _CountdownPageState(List_Weekly,List_Daily);
}

class _CountdownPageState extends State<CountdownPage> {
  _CountdownPageState(this.List_Weekly,this.List_Daily);
  List<String> List_Weekly;
  List<String> List_Daily;
  // カウンター
  int _counter = 100;

  @override
  void initState() {
    super.initState();
    // 1. Timer.periodic : 新しい繰り返しタイマーを作成します
    // 1秒ごとに _counterを1ずつ足していく
    Timer.periodic(
      // 第一引数：繰り返す間隔の時間を設定
      const Duration(seconds: 1),
      // 第二引数：その間隔ごとに動作させたい処理を書く
          (Timer timer) {
        _counter--;
        setState(() {});
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('タイマー'),
      ),
      body: Column(
        children: [
          Text(_counter.toString()),
          ElevatedButton(
            child: Text("決定"),
            onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => Home(List_Weekly,List_Daily),
              ),
              );
            },
          ),
        ],
      ),
    );
  }
}
