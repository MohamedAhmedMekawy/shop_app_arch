abstract class BaseRegisterRepository {
  Future<String> postRegister(
      {required String name,
      required String email,
      required String password,
      required String phone});
}
