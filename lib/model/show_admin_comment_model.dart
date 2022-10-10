class ShowAdminCommentModel {
  String? id;
  String? premiumPackageId;
  String? name;
  String? image;
  String? review;
  String? comment;
  String? path;

  ShowAdminCommentModel(
      {this.id,
        this.premiumPackageId,
        this.name,
        this.image,
        this.review,
        this.comment,
        this.path});

  ShowAdminCommentModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    premiumPackageId = json['premium_package_id'];
    name = json['name'];
    image = json['image'];
    review = json['review'];
    comment = json['comment'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['premium_package_id'] = this.premiumPackageId;
    data['name'] = this.name;
    data['image'] = this.image;
    data['review'] = this.review;
    data['comment'] = this.comment;
    data['path'] = this.path;
    return data;
  }
}
