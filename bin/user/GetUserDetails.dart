import 'dart:convert';

import '../person/Person.dart';
import 'package:http/http.dart' as http;

import 'User.dart';

void main(){
  _displayAllUser();
}

void _displayAllUser() async{
  var lstUser = await _getAllPerson();
  for(var user in lstUser){
    print('user id ${user.id} and latitude : ${user.address!.geo!.lat!}');
  }
}

Future<List<User>> _getAllPerson() async{
  var lstUser;
  var jsonUser;
  
  try{
      final response =await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
      if(response.statusCode == 200){
        jsonUser = jsonDecode(response.body);
        lstUser= (jsonUser as List).map((user) => User.fromJson(user)).toList();
      }
  } on Exception{
    throw Exception('Failed to load data');
  }
  
  return lstUser;
}