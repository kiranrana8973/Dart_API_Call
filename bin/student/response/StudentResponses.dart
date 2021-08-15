import 'package:json_annotation/json_annotation.dart';

import '../model/Student.dart';
part 'StudentResponses.g.dart';

@JsonSerializable()
class StudentResponses{
  bool? success;
  List<Student>? data;

  StudentResponses({this.success,this.data});

  factory StudentResponses.fromJson(Map<String,dynamic> data) => _$StudentResponsesFromJson(data);
  Map<String,dynamic> toJson() => _$StudentResponsesToJson(this);
}