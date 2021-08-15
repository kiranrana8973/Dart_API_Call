import 'dart:convert';
import 'package:http/http.dart' as http;

import '../Constants.dart';
import '../user/User.dart';
import 'response/UserResponse.dart';

void main() async{
  //registerUser();

  if(await login()==true){
      print('Success');
  }else{
    print('Either username or password is incorrect');
  }
}

var user = {
  'fname': 'Kiran',
  'lname': 'rana',
  'username': 'kiran54',
  'password': 'kiran123'
};

//Register User
Future<bool> registerUser() async {
  //var user = User(fname:'Kiran',lname: 'rana',username: 'kiran55',password: 'kiran123' );
  var flag = true;
  try {
    var response =
        await http.post(Uri.parse(BASE_URL + 'auth/register'), body: user);
    if (response.statusCode == 200) {
      var userResponse = UserResponse.fromJson(jsonDecode(response.body));
    } else if (response.statusCode == 400) {
      flag = false;
      print('Duplicate Username');
      print('Error code : ${response.statusCode} and body : ${response.body}');
    }
  } on Exception {
    throw Exception('Cannot register user');
  }
  return flag;
}

// Login User
Future<bool> login() async {
  var usernamePassword = {
    'username': 'kiran',
    'password': 'kiran123',
  };
  var flag = true;
  try {
    var response = await http.post(Uri.parse(BASE_URL + 'auth/login'),
        body: usernamePassword);
    if (response.statusCode == 200) {
      var userResponse = UserResponse.fromJson(jsonDecode(response.body));
      token = userResponse.token!;
    } else {
      flag = false;
    }
  } on Exception {
    flag = false;
    throw Exception('Error');
  }

  return flag;
}
