import 'dart:convert';

class Person {
  int? userId;
  int? id;
  String? title;
  String? body;

  Person({this.userId, this.id, this.title, this.body});

  factory Person.fromJson(Map<String, dynamic> json) {
    return Person(
      userId: json['userId'] as int,
      id: json['id'] as int,
      title: json['title'] as String,
      body: json['body'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['userId'] = userId;
    data['id'] = id;
    data['title'] = title;
    data['body'] = body;
    return data;
  }
}
