import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'main.dart';

class AudioPlayerPage extends StatefulWidget {
  AudioPlayerPage(this.List_Weekly,this.List_Daily);
  List<String> List_Weekly;
  List<String> List_Daily;

  @override
  _AudioPlayerPageState createState() => _AudioPlayerPageState(List_Weekly,List_Daily);
}

class _AudioPlayerPageState extends State<AudioPlayerPage> {
  _AudioPlayerPageState(this.List_Weekly,this.List_Daily);
  List<String> List_Weekly;
  List<String> List_Daily;

  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('musics/Sukiyaki.mp3');
    _controller.initialize().then((_) {
      // 最初のフレームを描画するため初期化後に更新
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
                      builder: (BuildContext context) => Home(List_Weekly,List_Daily),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
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