import 'package:http/http.dart' as http;
import 'dart:convert';

import '../Constants.dart';
import 'response/SingleStudentResponse.dart';
import 'response/StudentResponses.dart';

void main() {
 // printAllStudents();

  printSingleStudent("611634ec80478b33cc34ac29");
}

void printSingleStudent(String id) async{
  var response = await getStudent(id);
  print(response.data!.fullname! + ' ' + response.data!.age.toString());
}

void printAllStudents() async {
  var response = await getAllStudent();
  for (var student in response.data!) {
    print('name : ${student.fullname} , ${student.address}');
  }
}

Future<StudentResponses> getAllStudent() async {
  var studentResponse;
  try {
    var response = await http.get(
      Uri.parse(BASE_URL + 'student/'),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    if (response.statusCode == 200) {
      studentResponse = StudentResponses.fromJson(jsonDecode(response.body));
    }
  } on Exception {
    throw ('Error');
  }

  return studentResponse;
}

Future<SingleStudentResponse> getStudent(String id) async{
  var singleStudentResponse;
  try {
    var response = await http.get(
      Uri.parse(BASE_URL + 'student/$id'),
      headers: {
        'Authorization': 'Bearer $token',
      },
    );
    if (response.statusCode == 200) {
      singleStudentResponse = SingleStudentResponse.fromJson(jsonDecode(response.body));
    }
  } on Exception {
    throw ('Error');
  }

  return singleStudentResponse;
}