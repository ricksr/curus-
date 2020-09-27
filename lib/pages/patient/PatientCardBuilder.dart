// import 'package:flutter/material.dart';

// class cards extends StatefulWidget {
//   cards({
//     Key key,
//     @required this.image,
//     @required this.namePrefix,
//     @required this.firstName,
//     @required this.lastName,
//     @required this.string,
//   }) : super(key: key);

//   dynamic image;
//   final String namePrefix;
//   final String firstName;
//   final String lastName;
//   final String string;

//   @override
//   _cardsState createState() => _cardsState();
// }

// class _cardsState extends State<cards> {
//   @override
//   Widget build(BuildContext context) {
//     return new Card(
//       margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
//       child: new Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: CircleAvatar(
//               radius: 30.0,
//               backgroundColor: Colors.grey[200],
//               backgroundImage: NetworkImage(widget.image),
//             ),
//           ),
//           SizedBox(
//             // width: 30.0,
//             height: 100,
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Flexible(
//                     child: Text(
//                       widget.namePrefix +
//                           " " +
//                           widget.firstName +
//                           " " +
//                           widget.lastName,
//                       style:
//                           TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Flexible(
//                     child: Text(
//                       widget.string,
//                       style: TextStyle(fontSize: 15),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
