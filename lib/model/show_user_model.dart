class ShowUserSheduleModel {
  String? id;
  String? userId;
  String? vehicleId;
  String? type;
  String? date;
  String? time;
  VehicleName? vehicleName;
  UserName? userName;
  String? path;

  ShowUserSheduleModel(
      {this.id,
        this.userId,
        this.vehicleId,
        this.type,
        this.date,
        this.time,
        this.vehicleName,
        this.userName,
        this.path});

  ShowUserSheduleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    vehicleId = json['vehicle_id'];
    type = json['type'];
    date = json['date'];
    time = json['time'];
    vehicleName = json['vehicle_name'] != null
        ? new VehicleName.fromJson(json['vehicle_name'])
        : null;
    userName = json['user_name'] != null
        ? new UserName.fromJson(json['user_name'])
        : null;
    path = json['path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['vehicle_id'] = this.vehicleId;
    data['type'] = this.type;
    data['date'] = this.date;
    data['time'] = this.time;
    if (this.vehicleName != null) {
      data['vehicle_name'] = this.vehicleName!.toJson();
    }
    if (this.userName != null) {
      data['user_name'] = this.userName!.toJson();
    }
    data['path'] = this.path;
    return data;
  }
}

class VehicleName {
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

  VehicleName(
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

  VehicleName.fromJson(Map<String, dynamic> json) {
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

class UserName {
  String? id;
  String? partnerId;
  String? addressId;
  String? userName;
  String? mobile;
  String? flatNumber;
  String? vehicleName;
  String? vehicleReg;
  String? price;
  String? type;
  String? date;
  String? otp;
  String? otpVarifyStatus;

  UserName(
      {this.id,
        this.partnerId,
        this.addressId,
        this.userName,
        this.mobile,
        this.flatNumber,
        this.vehicleName,
        this.vehicleReg,
        this.price,
        this.type,
        this.date,
        this.otp,
        this.otpVarifyStatus});

  UserName.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    partnerId = json['partner_id'];
    addressId = json['address_id'];
    userName = json['user_name'];
    mobile = json['mobile'];
    flatNumber = json['flat_number'];
    vehicleName = json['vehicle_name'];
    vehicleReg = json['vehicle_reg'];
    price = json['price'];
    type = json['type'];
    date = json['date'];
    otp = json['otp'];
    otpVarifyStatus = json['otp_varify_status'];
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
    data['vehicle_reg'] = this.vehicleReg;
    data['price'] = this.price;
    data['type'] = this.type;
    data['date'] = this.date;
    data['otp'] = this.otp;
    data['otp_varify_status'] = this.otpVarifyStatus;
    return data;
  }
}
