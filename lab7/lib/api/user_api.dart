import 'package:lab7/entity/user_entity.dart';
import 'package:lab7/utils/rest_client.dart';

class UserApi {
  static Future<UserEntity> register(String username, String password) async {
    Map<String, dynamic> response = await RestClient.post(
      "/user/register",
      data: {
        "email": username,
        "password": password,
      },
    );
    UserEntity user = UserEntity.fromJson(response);
    return user;
  }

  static Future<UserEntity> login(String username, String password) async {
    Map<String, dynamic> response = await RestClient.post(
      "/user/login",
      data: {
        "email": username,
        "password": password,
      },
    );
    UserEntity user = UserEntity.fromJson(response);
    return user;
  }
}
