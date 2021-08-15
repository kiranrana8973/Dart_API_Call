
import 'package:json_annotation/json_annotation.dart';
part 'Student.g.dart';

@JsonSerializable()
class Student{
  String? fullname;
  int? age;
  String? gender;
  String? address;

  Student({this.fullname,this.age,this.gender,this.address});

  factory Student.fromJson(Map<String,dynamic> data) => _$StudentFromJson(data);
  Map<String,dynamic> toJson() => _$StudentToJson(this);
}
