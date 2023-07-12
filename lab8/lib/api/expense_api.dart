import 'package:lab8/entity/expense.entity.dart';
import 'package:lab8/utils/rest_client.dart';

class ExpenseApi {
  static Future<List<ExpenseEntity>> list() async {
    List<dynamic> response = await RestClient.get("/expense");

    List<ExpenseEntity> expenses =
        response.map((e) => ExpenseEntity.fromJson(e)).toList();
    return expenses;
  }

  static dynamic create(
    String description,
    String amount,
  ) async {
    await RestClient.post("/expense", data: {
      "description": description,
      "amount": amount,
    });
  }

  static Future<void> update(
    int expenseId,
    String description,
    String amount,
  ) async {
    await RestClient.patch("/expense/${expenseId}", data: {
      "description": description,
      "amount": amount,
    });
  }

  static Future<void> delete(int expenseId) async {
    await RestClient.delete("/expense/${expenseId}");
  }
}
