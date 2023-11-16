class Letter {
  int id;
  String name;
  String translate;
  String example;
  Letter({
    this.id = 0,
    this.name = "",
    this.translate = "",
    this.example = "",
  });
  factory Letter.fromMap(Map<String, dynamic> json) => Letter(
        id: json["id"],
        name: json["name"],
        translate: json["translate"],
        example: json["example"],
      );
}

class Data {
  int status;
  String message;
  List<Letter> letters;
  Data({this.status = 1, this.message = "", required this.letters});
  factory Data.fromMap(Map<String, dynamic> json) => Data(
    status: json["1"],
    message: json["message"],
    letters: List<Letter>.from(json["letters"].map((x) => Letter.fromMap(x))),
  );
}
