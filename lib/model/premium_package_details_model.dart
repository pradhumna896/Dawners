class PremiumPackageDetailsModel {
  String? id;
  String? premiumPackageId;
  String? rowMaterialName;
  String? image;
  String? description;
  String? path;

  PremiumPackageDetailsModel(
      {this.id,
        this.premiumPackageId,
        this.rowMaterialName,
        this.image,
        this.description,
        this.path});

  PremiumPackageDetailsModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    premiumPackageId = json['premium_package_id'];
    rowMaterialName = json['row_material_name'];
    image = json['image'];
    description = json['description'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['premium_package_id'] = this.premiumPackageId;
    data['row_material_name'] = this.rowMaterialName;
    data['image'] = this.image;
    data['description'] = this.description;
    data['path'] = this.path;
    return data;
  }
}
