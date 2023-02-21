import 'package:dartz/dartz.dart';
import 'package:shop_app_arch/core/error/exceptions.dart';
import 'package:shop_app_arch/core/error/failure.dart';
import 'package:shop_app_arch/shop_app/auth/login/data/data_source/login_data_source.dart';
import 'package:shop_app_arch/shop_app/auth/login/domain/entities/login.dart';
import 'package:shop_app_arch/shop_app/auth/login/domain/repository/base_login_repository.dart';
import 'package:shop_app_arch/shop_app/auth/login/domain/use_case/login_use_case.dart';

class LoginRepository extends BaseLoginRepository{
  final BaseLoginDataSource baseLoginDataSource;

  LoginRepository(this.baseLoginDataSource);
  @override
  Future<Either<Failure, Login>> login(LoginParameter parameter) async{
   final result = await baseLoginDataSource.getLogin(parameter);
   print(result);
   try{
     return right(result);
   } on ServiceExceptions catch(failure){
     return left(ServiceFailure(failure.errorMessageModel.message));
   }
  }

}