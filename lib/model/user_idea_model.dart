
class UserIdeaModel {
  String? id;
  String? userId;
  String? image;
  String? description;
  String? path;
  String? result;

  UserIdeaModel(
      {this.id,
        this.userId,
        this.image,
        this.description,
        this.path,
        this.result});

  UserIdeaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    image = json['image'];
    description = json['description'];
    path = json['path'];
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['image'] = this.image;
    data['description'] = this.description;
    data['path'] = this.path;
    data['result'] = this.result;
    return data;
  }
}
