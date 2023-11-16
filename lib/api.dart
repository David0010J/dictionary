// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:dictionary/model/post.dart';
//
// class Api extends StatefulWidget {
//   const Api({super.key});
//
//   @override
//   State<Api> createState() => _ApiState();
// }
//
// class _ApiState extends State<Api> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'John Vid',
//       theme: ThemeData(
//         primaryColor: Colors.lightBlueAccent,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('John Vid'),
//         ),
//         body: FutureBuilder<List<Post>>(
//           future: futurePost,
//           builder: (context, snapshot) {
//             if (snapshot.hasData) {
//               return ListView.builder(
//                 itemCount: snapshot.data!.length,
//                 itemBuilder: (_, index) => Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//                   padding: const EdgeInsets.all(20.0),
//                   decoration: BoxDecoration(
//                     color: const Color(0xff97FFFF),
//                     borderRadius: BorderRadius.circular(15.0),
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         snapshot.data![index].title,
//                         style: const TextStyle(
//                           fontSize: 18.0,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(height: 10),
//                       Text(snapshot.data![index].body),
//                     ],
//                   ),
//                 ),
//               );
//             } else {
//               return const Center(child: CircularProgressIndicator());
//             }
//           },
//         ),
//       ),
//     );
//   }
//
//   Future<List<Post>> fetchPost() async {
//     final response =
//         await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
//     if (response.statusCode == 200) {
//       final parsed = json.decode(response.body).cast<Map<String, dynamic>>();
//       return parsed.map<Post>((json) => Post.fromMap(json)).toList();
//     } else {
//       throw Exception('Failed to load album');
//     }
//   }
//
//   url(String s) {}
// }
