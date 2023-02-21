import 'package:dartz/dartz.dart';
import 'package:shop_app_arch/core/error/failure.dart';
import 'package:shop_app_arch/shop_app/auth/login/domain/entities/login.dart';
import 'package:shop_app_arch/shop_app/auth/login/domain/use_case/login_use_case.dart';

abstract class BaseLoginRepository{
  Future<Either<Failure, Login>> login(LoginParameter parameter);
}