import 'package:equatable/equatable.dart';
import 'package:shop_app_arch/shop_app/auth/login/domain/entities/user_data.dart';

class Login extends Equatable {
  final bool status;
  final String message;
  final UserData? data;

  const Login({required this.status, required this.message, required this.data});

  @override
  // TODO: implement props
  List<Object?> get props => [status, message, data];
}
