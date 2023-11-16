import 'package:flutter/material.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key, required this.todos});
  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      //passing in the ListView.builder
      body: ListView.separated(
        itemCount: todos.length,
        separatorBuilder: (BuildContext context, int index)=>const Divider(),
        itemBuilder: (context, int index) {
          return ListTile(
            title: Text(todos[index].word),
          );
        },
      ),
    );
  }
}

class Todo {
  final String title;
  final String word;
  final String classes;
  final String description;
  final String example;
  final String example1;

  const Todo(this.title, this.word, this.classes, this.description,
      this.example, this.example1);
}

final todos = List.generate(
  200,
  (i) => const Todo(
    'ពន្យល់ពាក្យ',
    'កណ្ដេង',
    '(ន.) ',
    'ឈ្មោះ ភមរជាតិ មួយ ប្រភេទ ពួក ម្រោម មាន មេ ធំ ជាង ម្រោម បន្តិច, មិន ចេះ ទិច, ត្រឹប យក ដម និង លំអង ផ្កា ដូច ម្រោម ធើ្វ សំបុក នៅក្នុង រន្ធ ដំបូក មាន ជ័រ ពណ៌ ស ឬ លឿង រឹង ដូច ជ័រចុង ហៅថា ជ័រ កណ្តេង (មាន ដោយ ស្រុក) ។',
    '',
    '',
  ),
);
