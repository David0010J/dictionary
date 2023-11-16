import 'dart:convert' show json, jsonDecode;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'test.dart';

class Con extends StatefulWidget {
  const Con({super.key});

  @override
  State<Con> createState() => _ConState();
}

class _ConState extends State<Con> {
  // List<Datum> dictionary = [];
  List<Tests> dictionary = [];

  @override
  void initState() {
    super.initState();
    fetchTests();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: fetchTests(),
        builder: (context, snapshot) {
          if(snapshot.hasData){
            return ListView.builder(
                itemCount:1,
                itemBuilder:(context, index){
                  return Container(
                    color: Colors.purpleAccent,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text('Status: ${dictionary[index].status}', style: TextStyle(fontFamily: 'Bokor', fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white),),
                        // Text('Message: ${dictionary[index].message}', style: TextStyle(fontFamily: 'Bokor', fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white),),
                        Text('Data:${dictionary[index].title}', style: TextStyle(fontFamily: 'Bokor', fontSize: 11, fontWeight: FontWeight.bold, color: Colors.white),),
                      ],
                    ),
                  );
                }
            );
          }
          else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }
    );
  }

  // Future<List<Tests>> getData() async{
  //   final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  //   var data = jsonDecode(response.body.toString());
  //
  //   if(response.statusCode==200){
  //     for(Map <String, dynamic> index in data){
  //       dictionary.add(Tests.fromJson(index));
  //     }
  //     return dictionary;
  //   } else {
  //     return dictionary;
  //   }
  // }

  Future<void> fetchTests() async {
    // you can replace your api link with this link
    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      List<dynamic> jsonData = json.decode(response.body);
      setState(() {
        dictionary = jsonData.map((data) => Tests.fromJson(data)).toList();
      });
    } else {
      // Handle error if needed
    }
  }

}
