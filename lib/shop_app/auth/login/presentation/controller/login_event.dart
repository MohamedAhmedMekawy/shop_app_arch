import 'package:equatable/equatable.dart';
import 'package:shop_app_arch/shop_app/auth/login/domain/use_case/login_use_case.dart';

abstract class LoginEvent extends Equatable{
  const LoginEvent();
}

class GetLoginEvent extends LoginEvent{
  final  LoginParameter loginParameter;
  const GetLoginEvent(this.loginParameter);

  @override
  List<Object?> get props => [loginParameter];
}