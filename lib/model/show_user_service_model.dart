class UserShowServiceModel {
  String? id;
  String? premiumPackageId;
  String? logoFile;
  String? servicesName;
  String? path;

  UserShowServiceModel(
      {this.id,
        this.premiumPackageId,
        this.logoFile,
        this.servicesName,
        this.path});

  UserShowServiceModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    premiumPackageId = json['premium_package_id'];
    logoFile = json['logo_file'];
    servicesName = json['services_name'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['premium_package_id'] = this.premiumPackageId;
    data['logo_file'] = this.logoFile;
    data['services_name'] = this.servicesName;
    data['path'] = this.path;
    return data;
  }
}
