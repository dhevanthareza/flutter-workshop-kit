import 'package:lab8_final/entity/expense.entity.dart';
import 'package:lab8_final/utils/rest_client.dart';

class ExpenseApi {
  static Future<List<ExpenseEntity>> list() async {
    List<dynamic> response = await RestClient.get('/expense');
    List<ExpenseEntity> expenses =
        response.map((e) => ExpenseEntity.fromJson(e)).toList();
    return expenses;
  }

  static Future<void> create(String description, String amount) async {
    await RestClient.post('/expense',
        data: {"description": description, "amount": amount});
    return;
  }

  static Future<void> update(int id, String description, String amount) async {
    await RestClient.patch('/expense/${id}',
        data: {"description": description, "amount": amount});
    return;
  }

  static Future<void> delete(int id) async {
    await RestClient.delete('/expense/${id}');
    return;
  }
}
