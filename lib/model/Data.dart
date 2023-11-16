import 'dart:convert';

class Dictionary {
  int? status;
  String? message;
  List<Datum> data;

  Dictionary({
    this.status,
    this.message,
    required this.data,
  });

  List<Dictionary> dictionaryFromJson(String str) =>
      List<Dictionary>.from(json.decode(str));

  factory Dictionary.fromRawJson(String str) =>
      Dictionary.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Dictionary.fromJson(Map<String, dynamic> json) => Dictionary(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null
            ? []
            : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  int id;
  String name;
  String translate;
  String example;
  DateTime createdAt;
  DateTime updatedAt;

  Datum({
    required this.id,
    required this.name,
    required this.translate,
    required this.example,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Datum.fromRawJson(String str) => Datum.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        translate: json["translate"],
        example: json["example"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "translate": translate,
        "example": example,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}
