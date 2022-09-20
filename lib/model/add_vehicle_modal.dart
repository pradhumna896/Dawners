class AddVehicleModal {
  String? message;
  List<AddModelData>? data;

  AddVehicleModal({this.message, this.data});

  AddVehicleModal.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <AddModelData>[];
      json['data'].forEach((v) {
        data!.add(new AddModelData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AddModelData {
  String? id;
  String? categoryId;
  String? productName;
  String? image;
  String? quantity;
  String? path;

  AddModelData(
      {this.id,
        this.categoryId,
        this.productName,
        this.image,
        this.quantity,
        this.path});

  AddModelData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    productName = json['product_name'];
    image = json['image'];
    quantity = json['quantity'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['product_name'] = this.productName;
    data['image'] = this.image;
    data['quantity'] = this.quantity;
    data['path'] = this.path;
    return data;
  }
}
