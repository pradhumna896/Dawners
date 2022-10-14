class UserBannerModel {
  String? id;
  String? premiumPackageId;
  String? file;
  String? title;
  String? rowMaterialId;
  String? path;

  UserBannerModel(
      {this.id,
        this.premiumPackageId,
        this.file,
        this.title,
        this.rowMaterialId,
        this.path});

  UserBannerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    premiumPackageId = json['premium_package_id'];
    file = json['file'];
    title = json['title'];
    rowMaterialId = json['row_material_id'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['premium_package_id'] = this.premiumPackageId;
    data['file'] = this.file;
    data['title'] = this.title;
    data['row_material_id'] = this.rowMaterialId;
    data['path'] = this.path;
    return data;
  }
}
