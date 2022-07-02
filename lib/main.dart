import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EnterSubject(),
    );
  }
}

class EnterSubject extends StatefulWidget {
  const EnterSubject({Key? key}) : super(key: key);

  @override
  State<EnterSubject> createState() => _EnterSubjectState();
}

class _EnterSubjectState extends State<EnterSubject> {
  List<String> Subject = [""];
  List<String> Unit = [""];
  List<String> Divided_num = [""];
  int list_num = 0;

  void textfield(String label_name, List list_name) {
    TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: label_name,
        hintText: label_name,
      ),
      onChanged: (name) {
        list_name[0] = name;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("今週のto do")),
      body: Column(
        children: [

          //for(int i=0;i<100;i++)
          
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "科目",
              hintText: "科目",
            ),
            onChanged: (_Subject) {
              Subject[list_num] = _Subject;
            },
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "単元",
              hintText: "単元",
            ),
            onChanged: (_Unit) {
              Unit[list_num] = _Unit;
            },
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "分割数",
              hintText: "分割数",
            ),
            onChanged: (_Divided) {
              Divided_num[list_num] = _Divided;
            },
          ),
          ElevatedButton(
              child: Text("登録"),
              onPressed: () {
                print("$list_num,${Subject[0]} , ${Unit[0]} , ${Divided_num[0]}");
                list_num++;
              }),
          
          ElevatedButton(
              child: Text("決定"),
              onPressed: () {
                print("end");
              })
        ],
      ),
    );
  }
}
