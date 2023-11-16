import 'package:dictionary/word.dart';
import 'package:flutter/material.dart';
import 'package:dictionary/screens/grammar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'វចនានុក្រមខ្មែរ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // useMaterial3: true,
      // );
      home: const Scaffold(
        body: Word(),
      ),
    );
  }
}
