class AddVehicleModal {
  String? message;
  List<AddVehicleData>? data;

  AddVehicleModal({this.message, this.data});

  AddVehicleModal.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <AddVehicleData>[];
      json['data'].forEach((v) {
        data!.add(AddVehicleData.fromJson(v));
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

class AddVehicleData {
  String? id;
  String? categoryId;
  String? vehicleName;
  String? image;
  String? dailyPrice;
  String? alternatePrice;
  String? quantity;
  String? path;

  AddVehicleData(
      {this.id,
        this.categoryId,
        this.vehicleName,
        this.image,
        this.dailyPrice,
        this.alternatePrice,
        this.quantity,
        this.path});

  AddVehicleData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    vehicleName = json['vehicle_name'];
    image = json['image'];
    dailyPrice = json['daily_price'];
    alternatePrice = json['alternate_price'];
    quantity = json['quantity'];
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['vehicle_name'] = this.vehicleName;
    data['image'] = this.image;
    data['daily_price'] = this.dailyPrice;
    data['alternate_price'] = this.alternatePrice;
    data['quantity'] = this.quantity;
    data['path'] = this.path;
    return data;
  }
}
