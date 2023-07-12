class UserEntity {
  String? email;
  String? updatedAt;
  String? createdAt;
  int? id;
  String? accessToken;

  UserEntity(
      {this.email, this.updatedAt, this.createdAt, this.id, this.accessToken});

  UserEntity.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    data['access_token'] = this.accessToken;
    return data;
  }
}
