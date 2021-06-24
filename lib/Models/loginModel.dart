// To parse this JSON data, do
//
//     final login = loginFromJson(jsonString);

import 'dart:convert';

Login loginFromJson(String str) => Login.fromJson(json.decode(str));

String loginToJson(Login data) => json.encode(data.toJson());

class Login {
  Login({
    required this.message,
    required this.userExists,
    required this.token,
  });

  String message;
  UserExists userExists;
  String token;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        message: json["message"],
        userExists: UserExists.fromJson(json["userExists"]),
        token: json["token"],
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "userExists": userExists.toJson(),
        "token": token,
      };
}

class UserExists {
  UserExists({
    required this.id,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.date,
    required this.v,
  });

  String id;
  String name;
  String email;
  int phoneNumber;
  String password;
  DateTime date;
  int v;

  factory UserExists.fromJson(Map<String, dynamic> json) => UserExists(
        id: json["_id"],
        name: json["name"],
        email: json["email"],
        phoneNumber: json["phone_number"],
        password: json["password"],
        date: DateTime.parse(json["date"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "email": email,
        "phone_number": phoneNumber,
        "password": password,
        "date": date.toIso8601String(),
        "__v": v,
      };
}
