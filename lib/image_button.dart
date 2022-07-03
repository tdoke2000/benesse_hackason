import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button({required this.filename});

  final Image filename;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        onPressed: () {},
        child: filename,
      ),
    );
  }
}