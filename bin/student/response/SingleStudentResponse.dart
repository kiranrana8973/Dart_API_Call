import 'package:json_annotation/json_annotation.dart';
import '../model/Student.dart';
part 'SingleStudentResponse.g.dart';

@JsonSerializable()
class SingleStudentResponse{

  bool? success;
  Student? data;

  SingleStudentResponse({this.success,this.data});

  factory SingleStudentResponse.fromJson(Map<String,dynamic> data) => _$SingleStudentResponseFromJson(data);
  Map<String,dynamic> toJson() => _$SingleStudentResponseToJson(this);
}