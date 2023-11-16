import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> data = [
    'កណ្តេង',
    'កណ្តេង',
    'កណ្តេង',
    'កណ្តេង',
    'កណ្ដៀខ្មូត',
    'កណ្តេង',
    'កណ្តេង',
    'កណ្តេង',
    'កណ្តេង',
    'កណ្តេង',
  ];

  List<String> searchResults = [];

  void onQueryChanged(String query) {
    setState(() {
      searchResults = data
          .where((item) => item.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Search Bar Tutorial'),
      ),
      body: Column(
        children: [
          SearchBar(onChanged: onQueryChanged,),
          Expanded(
            child: ListView.builder(
              itemCount: searchResults.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(searchResults[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}