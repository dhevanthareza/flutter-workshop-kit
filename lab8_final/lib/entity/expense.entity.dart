class ExpenseEntity {
  int? id;
  String? description;
  int? amount;
  int? userId;
  String? createdAt;
  String? updatedAt;

  ExpenseEntity(
      {this.id,
      this.description,
      this.amount,
      this.userId,
      this.createdAt,
      this.updatedAt});

  ExpenseEntity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    description = json['description'];
    amount = json['amount'];
    userId = json['user_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['description'] = this.description;
    data['amount'] = this.amount;
    data['user_id'] = this.userId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
