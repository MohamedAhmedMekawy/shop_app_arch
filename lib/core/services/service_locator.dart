import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shop_app_arch/core/api/app_interceptor.dart';
import 'package:shop_app_arch/shop_app/auth/login/data/data_source/login_data_source.dart';
import 'package:shop_app_arch/shop_app/auth/login/data/repository/login_repository.dart';
import 'package:shop_app_arch/shop_app/auth/login/domain/repository/base_login_repository.dart';
import 'package:shop_app_arch/shop_app/auth/login/domain/use_case/login_use_case.dart';
import 'package:shop_app_arch/shop_app/auth/login/presentation/controller/login_bloc.dart';

final sl=GetIt.instance;
class ServicesLocator {
  void init() {
    // Blocs
    sl.registerFactory(() => LoginCubit(sl()));
    sl.registerLazySingleton(() => LoginUseCase(sl()));

    sl.registerLazySingleton<BaseLoginRepository>(() => LoginRepository(sl()));
    sl.registerLazySingleton<BaseLoginDataSource>(() =>
        LoginDataSource(apiConsumer: sl()));
    sl.registerLazySingleton(() => AppIntercepters());
    sl.registerLazySingleton(() =>
        LogInterceptor(
            request: true,
            requestBody: true,
            requestHeader: true,
            responseBody: true,
            responseHeader: true,
            error: true));
    sl.registerLazySingleton(() => Dio());
  }
}