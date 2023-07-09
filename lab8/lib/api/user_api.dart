import '../entity/user_entity.dart';
import '../utils/rest_client.dart';

class UserApi {
  static Future<UserEntity> login(String email, String password) async {
    Map<String, dynamic> response = await RestClient.post(
      "/user/login",
      data: {
        "email": email,
        "password": password,
      },
    );
    UserEntity user = UserEntity.fromJson(response);
    return user;
  }

  static Future<UserEntity> register(String email, String password) async {
    Map<String, dynamic> response = await RestClient.post(
      "/user/register",
      data: {
        "email": email,
        "password": password,
      },
    );
    UserEntity user = UserEntity.fromJson(response);
    return user;
  }
}
