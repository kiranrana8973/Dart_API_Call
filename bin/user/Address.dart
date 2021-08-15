import 'package:json_annotation/json_annotation.dart';

import 'Geo.dart';
part 'Address.g.dart';
// --- to generate part file
//dart run build_runner build
@JsonSerializable(explicitToJson: true) // use this if there is another class which can be converted to json
class Address {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  Address({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory Address.fromJson(Map<String,dynamic> data) => _$AddressFromJson(data);

  Map<String,dynamic> toJson() => _$AddressToJson(this);
}
