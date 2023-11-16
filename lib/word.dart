import 'package:flutter/material.dart';
import 'package:dictionary/function/detail_screen.dart';
import 'package:dictionary/function/todo.dart';


void main() {
  runApp(const Word());
}



class Word extends StatefulWidget {
  const Word({super.key});

  @override
  State<Word> createState() => _WordState();
}

class _WordState extends State<Word> {

  bool isDark = false;
  int _selectedIndex = 0;
  final TextEditingController _searchController = TextEditingController();

  List<String> data = [
    'កណ្តេង',
    'កងចៅ',
    'កងទ័ព',
    'កងព័ន្ធ',
    'កង្វល់',
    'កញ្ចាញ់ច្រាស',
    'កញ្ចាញ់ចេក',
    'កញ្ចឹងក ',
    'កញ្ជ្រៀច',
    'កញ្ជ្រោង',
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
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = ThemeData(
        useMaterial3: true,
        brightness: isDark ? Brightness.dark : Brightness.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text(
            'វចនានុក្រម ខ្មែរ~ខ្មែរ',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'Moul',
              fontSize: 16,
            ),
          ),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/angkor.jpg'),
                    fit: BoxFit.fill)),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SearchBar(
                controller: _searchController,
                onChanged: onQueryChanged,
                leading: const Icon(Icons.search),
                hintText: 'ស្វែងរកពាក្យ',
                textStyle: MaterialStateProperty.resolveWith((states) {
                  return const TextStyle(
                    fontFamily: 'Chenla',
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  );
                }),
                trailing: <Widget>[
                  Tooltip(
                    message: 'Change brightness mode',
                    child: IconButton(
                      isSelected: isDark,
                      onPressed: () {
                        setState(() {
                          isDark = !isDark;
                        });
                      },
                      icon: const Icon(Icons.wb_sunny_outlined),
                      selectedIcon: const Icon(Icons.brightness_2_outlined),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: searchResults.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(
                      searchResults[index],
                      style: const TextStyle(
                        fontFamily: 'Chenla',
                        fontSize: 13,
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(todo: todos[index]),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueAccent,
          selectedItemColor: Colors.orange,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.book_online),
              label: 'វេយ្យករណ៍',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'ចំណាំ',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.history),
                label: "ប្រវត្តិធ្លាប់មើល"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'កំណត់',
            ),
          ],
          currentIndex: _selectedIndex,
          // selectedItemColor: Colors.green[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class User {
  int id;
  String name;
  String translate;
  String example;
  User({this.id = 0, this.name = "", this.translate = "", this.example = ""});
  factory User.fromMap(Map<String, dynamic> json) {
    return User(
      id: json["id"],
      name: json["name"],
      translate: json["translate"],
      example: json["example"],
    );
  }
  Map<String, dynamic> get toMap => {
        "id": id,
        "name": name,
        "translate": translate,
        "example": example,
      };
}

