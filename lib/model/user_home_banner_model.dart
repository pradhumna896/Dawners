class UserHomeBannerModel {
  String? homeImage;
  String? path;

  UserHomeBannerModel({this.homeImage, this.path});

  UserHomeBannerModel.fromJson(Map<String, dynamic> json) {
    homeImage = json['home_image'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['home_image'] = this.homeImage;
    data['path'] = this.path;
    return data;
  }
}
