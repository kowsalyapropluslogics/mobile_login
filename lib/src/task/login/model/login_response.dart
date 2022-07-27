// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    this.status,
    this.message,
    this.data,
  });

  bool? status;
  String? message;
  LoginData? data;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json["status"],
        message: json["message"],
        data: LoginData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": data!.toJson(),
      };
}

class LoginData {
  LoginData({
    this.token,
    this.name,
    this.licenses,
  });

  Token? token;
  String? name;
  Licenses? licenses;

  factory LoginData.fromJson(Map<String, dynamic> json) => LoginData(
        token: Token.fromJson(json["Token"]),
        name: json["Name"],
        licenses: Licenses.fromJson(json["Licenses"]),
      );

  Map<String, dynamic> toJson() => {
        "Token": token!.toJson(),
        "Name": name,
        "Licenses": licenses!.toJson(),
      };
}

class Licenses {
  Licenses({
    this.lid,
    this.licenseKey,
    this.validFrom,
    this.validTo,
    this.leftDays,
    this.status,
    this.paymentStatus,
  });

  String? lid;
  String? licenseKey;
  String? validFrom;
  String? validTo;
  int? leftDays;
  int? status;
  int? paymentStatus;

  factory Licenses.fromJson(Map<String, dynamic> json) => Licenses(
        lid: json["LID"],
        licenseKey: json["LicenseKey"],
        validFrom: json["ValidFrom"],
        validTo: json["ValidTo"],
        leftDays: json["LeftDays"],
        status: json["Status"],
        paymentStatus: json["PaymentStatus"],
      );

  Map<String, dynamic> toJson() => {
        "LID": lid,
        "LicenseKey": licenseKey,
        "ValidFrom": validFrom,
        "ValidTo": validTo,
        "LeftDays": leftDays,
        "Status": status,
        "PaymentStatus": paymentStatus,
      };
}

class Token {
  Token({
    this.accessToken,
    this.token,
  });

  String? accessToken;
  TokenClass? token;

  factory Token.fromJson(Map<String, dynamic> json) => Token(
        accessToken: json["accessToken"],
        token: TokenClass.fromJson(json["token"]),
      );

  Map<String, dynamic> toJson() => {
        "accessToken": accessToken,
        "token": token!.toJson(),
      };
}

class TokenClass {
  TokenClass({
    this.id,
    this.userId,
    this.clientId,
    this.name,
    this.scopes,
    this.revoked,
    this.createdAt,
    this.updatedAt,
    this.expiresAt,
  });

  String? id;
  int? userId;
  String? clientId;
  String? name;
  List<dynamic>? scopes;
  bool? revoked;
  String? createdAt;
  String? updatedAt;
  String? expiresAt;

  factory TokenClass.fromJson(Map<String, dynamic> json) => TokenClass(
        id: json["id"],
        userId: json["user_id"],
        clientId: json["client_id"],
        name: json["name"],
        scopes: List<dynamic>.from(json["scopes"].map((x) => x)),
        revoked: json["revoked"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        expiresAt: json["expires_at"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "client_id": clientId,
        "name": name,
        "scopes": List<dynamic>.from(scopes!.map((x) => x)),
        "revoked": revoked,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "expires_at": expiresAt,
      };
}
