// class Home extends StatefulWidget {
//   Home(this.List_Weekly, this.List_Daily);
//   final List<List<String>> List_Weekly;
//   final List<List<String>> List_Daily;

//   // Map List_Weekly;
//   // Map List_Daily;

//   @override
//   State<Home> createState() => _HomeState(List_Weekly, List_Daily);
// }

// class _HomeState extends State<Home> {
//   _HomeState(this.List_Weekly, this.List_Daily);
//   final List<List<String>> List_Weekly;
//   final List<List<String>> List_Daily;

//   @override
//   Widget build(BuildContext context) {
//     //final String args = ModalRoute.of(context).settings.arguments;
//     List<List<String>> List_Day = [
//       ["", ""]
//     ];
//     List<List<String>> List_wek;

//     List_Day.addAll(List_Daily);

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('top page'),
//       ),
//       drawer: Drawer(
//         child: ListView(
//           children: <Widget>[
//             DrawerHeader(
//               child: Text(
//                 'My App',
//                 style: TextStyle(
//                   fontSize: 24,
//                   color: Colors.white,
//                 ),
//               ),
//               decoration: BoxDecoration(
//                 color: Colors.blue,
//               ),
//             ),
//             ListTile(
//               title: Text('今日のto do選択'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//             ListTile(
//               title: Text("今日のto do追加"),
//               onTap: () {
//                 Navigator.of(context).pushNamed("/DailyTask");
//               },
//             ),
//             ListTile(
//               title: Text('1週間のto doの作成'),
//               onTap: () {
//                 Navigator.of(context).pushNamed("/WeeklyTask");
//               },
//             ),
//             ListTile(
//               title: Text('1週間のto doの編集'),
//               onTap: () {
//                 Navigator.pop(context);
//               },
//             ),
//           ],
//         ),
//       ),
//       body: GridView.count(
//         crossAxisCount: 2,
//         mainAxisSpacing: 5,
//         //crossAxisSpacing: 1,
//         childAspectRatio: 0.3,
//         children: [
//           ListView.builder(
//             itemCount: List_Daily.length - 1, // moviesの長さだけ表示
//             itemBuilder: (BuildContext context, int index) {
//               return Container(
//                 child: ListTile(
//                   title: Text('科目${List_Daily[index + 1][0]}'), // 科目
//                   subtitle: Text('単元:${List_Daily[index + 1][1]}'), // 単元
//                   trailing: Text('1/${List_Daily[index + 1][2]}'),
//                 ),
//               );
//             },
//           ),
//           ListView.builder(
//             itemCount: List_Weekly.length - 1, // moviesの長さだけ表示
//             itemBuilder: (BuildContext context, int index) {
//               return Container(
//                 child: ListTile(
//                   title: Text('科目${List_Weekly[index + 1][0]}'), // 科目
//                   subtitle: Text('単元:${List_Weekly[index + 1][1]}'), // 単元
//                   trailing: Text('1/${List_Weekly[index + 1][2]}'),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }
