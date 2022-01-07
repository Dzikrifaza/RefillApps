// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    this.sucess,
    this.message,
    this.data,
  });

  bool sucess;
  String message;
  Data data;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        sucess: json["sucess"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "sucess": sucess,
        "message": message,
        "data": data.toJson(),
      };
}

class Data {
  Data({
    this.login,
    this.apiToken,
  });

  Login login;
  String apiToken;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        login: Login.fromJson(json["login"]),
        apiToken: json["api_token"],
      );

  Map<String, dynamic> toJson() => {
        "login": login.toJson(),
        "api_token": apiToken,
      };
}

class Login {
  Login({
    this.idUser,
    this.namaUser,
    this.username,
    this.email,
    this.password,
  });

  int idUser;
  String namaUser;
  String username;
  String email;
  String password;

  factory Login.fromJson(Map<String, dynamic> json) => Login(
        idUser: json["id_user"],
        namaUser: json["nama_user"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
      );

  Map<String, dynamic> toJson() => {
        "id_user": idUser,
        "nama_user": namaUser,
        "username": username,
        "email": email,
        "password": password,
      };
}
