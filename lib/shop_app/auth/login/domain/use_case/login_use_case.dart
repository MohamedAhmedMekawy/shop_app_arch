import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:shop_app_arch/core/error/failure.dart';
import 'package:shop_app_arch/core/use_case/base_use_case.dart';
import 'package:shop_app_arch/shop_app/auth/login/domain/entities/login.dart';
import 'package:shop_app_arch/shop_app/auth/login/domain/repository/base_login_repository.dart';

class LoginUseCase extends BaseUseCase<Login,LoginParameter>{
  final BaseLoginRepository baseLoginRepository;

  LoginUseCase(this.baseLoginRepository);

  @override
  Future<Either<Failure, Login>> call(LoginParameter parameters) async{
    return await baseLoginRepository.login(parameters);
  }
}
class LoginParameter extends Equatable{
  final Map<String , dynamic> data;

  const LoginParameter(this.data);

  @override
  List<Object?> get props => [data];
}