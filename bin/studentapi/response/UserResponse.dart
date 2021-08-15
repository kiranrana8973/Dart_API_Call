
import 'package:json_annotation/json_annotation.dart';
part 'UserResponse.g.dart';

@JsonSerializable()
class UserResponse{
  bool? success;
  String? token;

  UserResponse({this.success,this.token});

  factory UserResponse.fromJson(Map<String,dynamic> data) => _$UserResponseFromJson(data);

  Map<String,dynamic> toJson() => _$UserResponseToJson(this);

}