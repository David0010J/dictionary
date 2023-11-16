import 'package:flutter/material.dart';


class Tests {
  final int userid;
  final int id;
  final String title;
  final double body;

  Tests({
    required this.userid,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Tests.fromJson(Map<String, dynamic> json) {
    return Tests(
      userid: json['userid'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}