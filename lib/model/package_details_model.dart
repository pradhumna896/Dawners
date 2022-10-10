class PackageDetailsModel {
  PackageTitle? packageTitle;
  RowMaterialName? rowMaterialName;
  Data? data;

  PackageDetailsModel({this.packageTitle, this.rowMaterialName, this.data});

  PackageDetailsModel.fromJson(Map<String, dynamic> json) {
    packageTitle = json['package_title'] != null
        ? new PackageTitle.fromJson(json['package_title'])
        : null;
    rowMaterialName = json['row_material_name'] != null
        ? new RowMaterialName.fromJson(json['row_material_name'])
        : null;
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.packageTitle != null) {
      data['package_title'] = this.packageTitle!.toJson();
    }
    if (this.rowMaterialName != null) {
      data['row_material_name'] = this.rowMaterialName!.toJson();
    }
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class PackageTitle {
  String? packageTitle;

  PackageTitle({this.packageTitle});

  PackageTitle.fromJson(Map<String, dynamic> json) {
    packageTitle = json['package_title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['package_title'] = this.packageTitle;
    return data;
  }
}

class RowMaterialName {
  String? rowMaterialName;

  RowMaterialName({this.rowMaterialName});

  RowMaterialName.fromJson(Map<String, dynamic> json) {
    rowMaterialName = json['row_material_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['row_material_name'] = this.rowMaterialName;
    return data;
  }
}

class Data {
  String? id;
  String? premiumPackageId;
  String? file;
  String? title;
  String? rowMaterialId;

  Data(
      {this.id,
        this.premiumPackageId,
        this.file,
        this.title,
        this.rowMaterialId});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    premiumPackageId = json['premium_package_id'];
    file = json['file'];
    title = json['title'];
    rowMaterialId = json['row_material_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['premium_package_id'] = this.premiumPackageId;
    data['file'] = this.file;
    data['title'] = this.title;
    data['row_material_id'] = this.rowMaterialId;
    return data;
  }
}
