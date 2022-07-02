// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import 'next_page.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Home(),
//     );
//   }
// }

// class Home extends StatelessWidget {
//   @override
//   // ここのcontextは上位ツリーで提供されたMaterialAppを含んでいる。
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('top page'),
//         ),
//         body: Center(
//           child: TextButton(
//             child: Text(
//               "Next",
//               style: TextStyle(
//                 fontSize: 40,
//               ),
//             ),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => NextPage(),
//                 ),
//               );
//             },
//           ),
//         ));
//   }
// }
