import 'package:shop_app_arch/shop_app/auth/login/domain/entities/login.dart';

class LoginModel extends Login {
  const LoginModel(
      {required super.status, required super.message, required super.data});

  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      LoginModel(status: json['status'], message: json['message'], data: json['data']);
}