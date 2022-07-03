import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';
import 'main.dart';
import 'daily_page.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';

class StudyTimePage extends StatefulWidget {
  StudyTimePage(this.List_Weekly,this.List_Daily);
  List<List<String>> List_Weekly;
  List<List<String>> List_Daily;

  @override
  State<StudyTimePage> createState() => _StudyTimePageState(List_Weekly,List_Daily);
}

class _StudyTimePageState extends State<StudyTimePage> {
  _StudyTimePageState(this.List_Weekly, this.List_Daily);

  List<List<String>> List_Weekly;
  List<List<String>> List_Daily;
  late VideoPlayerController _controller;

  // カウンター
  int _counter = 100;

  @override
  void initState() {
    super.initState();
    // 1. Timer.periodic : 新しい繰り返しタイマーを作成します
    // 1秒ごとに _counterを1ずつ足していく
    _controller = VideoPlayerController.asset('musics/Sukiyaki.mp3');
    _controller.initialize().then((_) {
      Timer.periodic(
        // 第一引数：繰り返す間隔の時間を設定
        const Duration(seconds: 1),
        // 第二引数：その間隔ごとに動作させたい処理を書く
            (Timer timer) {
          _counter--;
          setState(() {});
        },
      );
    });
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
      Container(
      padding: EdgeInsets.all(16),
      child: Icon(Icons.music_video, size: 256),
      ),
      VideoProgressIndicator(
      _controller,
      allowScrubbing: true,
      ),
      _ProgressText(controller: _controller),
      Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      IconButton(
      onPressed: () {
      _controller
          .seekTo(Duration.zero)
          .then((_) => _controller.play());
      },
      icon: Icon(Icons.refresh),
      ),
      IconButton(
      onPressed: () {
      _controller.play();
      },
      icon: Icon(Icons.play_arrow),
      ),
      IconButton(
      onPressed: () {
      _controller.pause();
      },
      icon: Icon(Icons.pause),
      ),
      ElevatedButton(
      child: Text("決定"),
      onPressed: () {
      _controller.pause();
      Navigator.push(
      context,
      MaterialPageRoute(
      builder: (BuildContext context) => DailyPage(List_Daily),
      ),
      );
      },
      ),
      ],
      ), ],
    ),
    );
  }

    @override
    void dispose() {
    _controller.dispose();
    super.dispose();
    }
}
class _ProgressText extends StatefulWidget {
  final VideoPlayerController controller;

  const _ProgressText({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  __ProgressTextState createState() => __ProgressTextState();
}

class __ProgressTextState extends State<_ProgressText> {
  late VoidCallback _listener;

  __ProgressTextState() {
    _listener = () {
      setState(() {});
    };
  }

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_listener);
  }

  @override
  void deactivate() {
    widget.controller.removeListener(_listener);
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    final String position = widget.controller.value.position.toString();
    final String duration = widget.controller.value.duration.toString();
    return Text('$position / $duration');
  }
}