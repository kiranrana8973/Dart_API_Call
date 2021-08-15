import 'dart:convert';
import 'package:http/http.dart' as http;

import 'Person.dart';


class GetPerson {
  void printAllPerson() async {
    var lstPerson = await getAllPerson();
    for (var person in lstPerson) {
      print(person.userId.toString() + ' ' + person.body.toString() + "\n");
    }
  }

  void printSinglePerson() async {
    var person = await getSinglePerson();
    print(person.body);
  }

  //get all posts
  Future<List<Person>> getAllPerson() async {
    var lstPerson;
    var jsonData;
    try {
      final response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
      if (response.statusCode == 200) {
        jsonData = jsonDecode(response.body);
        //Convert to list
        lstPerson = (jsonData as List)
            .map((person) => Person.fromJson(person))
            .toList();
      }
    } on Exception {
      throw Exception("Failed to load data");
    }
    return lstPerson;
  }

  //Get single data
  Future<Person> getSinglePerson() async {
    var response = await http
        .get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));
    if (response.statusCode == 200) {
      var personJson = jsonDecode(response.body);
      var person = Person.fromJson(personJson);
      return person;
    } else {
      throw Exception('Cannot load data');
    }
  }
}
