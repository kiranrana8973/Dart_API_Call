
import 'package:json_annotation/json_annotation.dart';
part 'User.g.dart';

@JsonSerializable()
class User{
  @JsonKey(name: '_id')
  String? id;
  String? fname;
  String? lname;
  String? username;
  String? password;

  User({this.id,this.fname,this.lname,this.username,this.password});

  factory User.fromJson(Map<String,dynamic> data) => _$UserFromJson(data);

  Map<String,dynamic> toJson() => _$UserToJson(this);
}

