import 'package:flutter/material.dart';
import 'package:dictionary/function/todo.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.todo});
  final Todo todo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 7.0),
            child: IconButton(
              icon: const Icon(Icons.bookmark_add_outlined),
              tooltip: 'Open shopping cart',
              onPressed: () {
              },
            ),
          ),
        ],
        title: Text(
          todo.title,
          style: const TextStyle(
            fontFamily: 'Bokor',
            fontSize: 18,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              todo.word,
              style: const TextStyle(
                fontFamily: 'Chenla',
                fontSize: 15,
                color: Colors.red,
              ),
            ),
            Text(
              todo.classes,
              style: const TextStyle(
                fontFamily: 'Chenla',
                fontSize: 15,
                color: Colors.blue,
              ),
            ),
            Text(
              todo.description,
              style: const TextStyle(
                fontFamily: 'Chenla',
                fontSize: 15,
              ),
            ),
            Text(
              todo.example,
              style: const TextStyle(
                fontFamily: 'Chenla',
                fontSize: 15,
              ),
            ),
            Text(
              todo.example1,
              style: const TextStyle(
                fontFamily: 'Chenla',
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
