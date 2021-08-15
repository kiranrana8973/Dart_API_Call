import 'package:json_annotation/json_annotation.dart';
import 'package:json_serializable/builder.dart';

import 'Address.dart';
part 'User.g.dart';
@JsonSerializable(explicitToJson: true)
class User {
  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;

  User({this.id, this.name, this.username, this.email, this.address});

  factory User.fromJson(Map<String,dynamic> data) => _$UserFromJson(data);

  Map<String,dynamic> toJson() => _$UserToJson(this);
}
