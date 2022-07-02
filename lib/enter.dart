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
  int map_num = 0;

  Map map_name = {
    0: {"Subject": "", "Unit": "", "Divid": ""},
    1: {"Subject": "", "Unit": "", "Divid": ""},
    2: {"Subject": "", "Unit": "", "Divid": ""},
    3: {"Subject": "", "Unit": "", "Divid": ""},
    4: {"Subject": "", "Unit": "", "Divid": ""},
    5: {"Subject": "", "Unit": "", "Divid": ""},
    6: {"Subject": "", "Unit": "", "Divid": ""},
    7: {"Subject": "", "Unit": "", "Divid": ""},
    8: {"Subject": "", "Unit": "", "Divid": ""},
    9: {"Subject": "", "Unit": "", "Divid": ""},
    10: {"Subject": "", "Unit": "", "Divid": ""},
  };

  // //void textfield(String label_name, List list_name) {
  //   TextField(
  //     decoration: InputDecoration(
  //       border: OutlineInputBorder(),
  //       labelText: label_name,
  //       hintText: label_name,
  //     ),
  //     onChanged: (name) {
  //       list_name[0] = name;
  //     },
  //   );
  // }

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
              map_name[map_num]["Subject"] = _Subject;
            },
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "単元",
              hintText: "単元",
            ),
            onChanged: (_Unit) {
              map_name[map_num]["Unit"] = _Unit;
            },
          ),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: "分割数",
              hintText: "分割数",
            ),
            onChanged: (_Divided) {
              map_name[map_num]["Divid"] = _Divided;
            },
          ),
          ElevatedButton(
              child: Text("登録"),
              onPressed: () {
                print("$map_num,${map_name[map_num]["Subject"]}");
                map_num++;
              }),

          ElevatedButton(
              child: Text("決定"),
              onPressed: () {
                print("end");
                map_num == 0;
                setState(() {});
              })
        ],
      ),
    );
  }
}
