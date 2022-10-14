class ShowUserVehicleModel {
  String? id;
  String? partnerId;
  String? addressId;
  String? userName;
  String? mobile;
  String? flatNumber;
  String? vehicleName;
  String? vehicleServiceId;
  String? vehicleReg;
  String? price;
  String? type;
  String? date;
  String? otp;
  String? otpVarifyStatus;
  Vehicle? vehicle;
  String? path;

  ShowUserVehicleModel(
      {this.id,
        this.partnerId,
        this.addressId,
        this.userName,
        this.mobile,
        this.flatNumber,
        this.vehicleName,
        this.vehicleServiceId,
        this.vehicleReg,
        this.price,
        this.type,
        this.date,
        this.otp,
        this.otpVarifyStatus,
        this.vehicle,
        this.path});

  ShowUserVehicleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    partnerId = json['partner_id'];
    addressId = json['address_id'];
    userName = json['user_name'];
    mobile = json['mobile'];
    flatNumber = json['flat_number'];
    vehicleName = json['vehicle_name'];
    vehicleServiceId = json['vehicle_service_id'];
    vehicleReg = json['vehicle_reg'];
    price = json['price'];
    type = json['type'];
    date = json['date'];
    otp = json['otp'];
    otpVarifyStatus = json['otp_varify_status'];
    vehicle =
    json['vehicle'] != null ? new Vehicle.fromJson(json['vehicle']) : null;
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['partner_id'] = this.partnerId;
    data['address_id'] = this.addressId;
    data['user_name'] = this.userName;
    data['mobile'] = this.mobile;
    data['flat_number'] = this.flatNumber;
    data['vehicle_name'] = this.vehicleName;
    data['vehicle_service_id'] = this.vehicleServiceId;
    data['vehicle_reg'] = this.vehicleReg;
    data['price'] = this.price;
    data['type'] = this.type;
    data['date'] = this.date;
    data['otp'] = this.otp;
    data['otp_varify_status'] = this.otpVarifyStatus;
    if (this.vehicle != null) {
      data['vehicle'] = this.vehicle!.toJson();
    }
    data['path'] = this.path;
    return data;
  }
}

class Vehicle {
  String? id;
  String? partnerId;
  String? addressId;
  String? categoryId;
  String? vehicleName;
  String? image;
  String? dailyPrice;
  String? alternatePrice;
  String? quantity;
  String? serviceType;
  String? time;

  Vehicle(
      {this.id,
        this.partnerId,
        this.addressId,
        this.categoryId,
        this.vehicleName,
        this.image,
        this.dailyPrice,
        this.alternatePrice,
        this.quantity,
        this.serviceType,
        this.time});

  Vehicle.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    partnerId = json['partner_id'];
    addressId = json['address_id'];
    categoryId = json['category_id'];
    vehicleName = json['vehicle_name'];
    image = json['image'];
    dailyPrice = json['daily_price'];
    alternatePrice = json['alternate_price'];
    quantity = json['quantity'];
    serviceType = json['service_type'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['partner_id'] = this.partnerId;
    data['address_id'] = this.addressId;
    data['category_id'] = this.categoryId;
    data['vehicle_name'] = this.vehicleName;
    data['image'] = this.image;
    data['daily_price'] = this.dailyPrice;
    data['alternate_price'] = this.alternatePrice;
    data['quantity'] = this.quantity;
    data['service_type'] = this.serviceType;
    data['time'] = this.time;
    return data;
  }
}
