class UserEntity {
  int? id;
  String? email;
  String? createdAt;
  String? updatedAt;
  String? accessToken;

  UserEntity(
      {this.id, this.email, this.createdAt, this.updatedAt, this.accessToken});

  UserEntity.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    accessToken = json['access_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['access_token'] = this.accessToken;
    return data;
  }
}
