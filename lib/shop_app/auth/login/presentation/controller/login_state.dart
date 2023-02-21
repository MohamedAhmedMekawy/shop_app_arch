import 'package:shop_app_arch/shop_app/auth/login/domain/entities/login.dart';

abstract class LoginState {}

class LoginInitial extends LoginState{}


class LoginLoadingState extends LoginState{}

class LoginSuccessState extends LoginState
{
  final Login login;

  LoginSuccessState(this.login);
}

class LoginErrorState extends LoginState{
  final String error;

  LoginErrorState(this.error);
}

class ChangePasswordState extends LoginState{}

