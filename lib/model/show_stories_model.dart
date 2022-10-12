class ShowStoriesModel {
  String? id;
  String? image;
  String? path;

  ShowStoriesModel({this.id, this.image, this.path});

  ShowStoriesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['image'] = this.image;
    data['path'] = this.path;
    return data;
  }
}
