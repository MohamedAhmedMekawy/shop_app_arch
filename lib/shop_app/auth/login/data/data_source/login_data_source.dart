import 'package:shop_app_arch/core/api/api_consumer.dart';
import 'package:shop_app_arch/core/api/end_point.dart';
import 'package:shop_app_arch/shop_app/auth/login/data/model/login_model.dart';
import 'package:shop_app_arch/shop_app/auth/login/domain/use_case/login_use_case.dart';

abstract class BaseLoginDataSource{
Future<LoginModel> getLogin(LoginParameter loginParameter);
}

class LoginDataSource extends BaseLoginDataSource{
  ApiConsumer? apiConsumer;
  LoginDataSource({required apiConsumer});
  @override
  Future<LoginModel> getLogin(LoginParameter loginParameter) async{
    final response = await apiConsumer!.post(
      EndPoints.login,
      body: loginParameter.data
    );
    return LoginModel.fromJson(response);
  }
}