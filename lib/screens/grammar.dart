import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final String stringResponse;
  Map? mapResponse;

  Future apicall() async {
    final dio = Dio();
    // response = await http.get(Uri.parse("http://10.0.2.2:8000/api/test"));
    dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final client = HttpClient();
        client.badCertificateCallback =
            (X509Certificate cert, String host, int port) => false;
        return client;
      },
    );
    var response = await dio.get('http://127.0.0.1:8000/api/test');
    print("response: $response");
    if (response.statusCode == 200) {
      setState(() {
        stringResponse = response.data;
        mapResponse = json.decode(stringResponse);
        print("mapResponse: $mapResponse");
      });
    }

    return mapResponse;
  }

  @override
  void initState() {
    apicall();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("John VId"),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20), color: Colors.blue),
          child: Center(
            child: mapResponse == null
                ? const Text('Data is loading ')
                : Text(mapResponse!['data'].toString()),
          ),
        ),
      ),
    );
  }
}
