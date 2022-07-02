import 'package:flutter/material.dart';
import 'main.dart';

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'next page',
            style: TextStyle(
              fontSize: 40,
            ),
          ),
        ),
        body: Center(
          child: TextButton(
            child: Text(
              '次へ',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyApp()),
              );
            },
          ),
        ),
      ),
    );
  }
}
