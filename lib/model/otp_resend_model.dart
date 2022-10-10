class OtpResendModel {
  String? message;
  Data? data;

  OtpResendModel({this.message, this.data});

  OtpResendModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
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
  String? otp;
  String? otpVarifyStatus;

  Data(
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
        this.otp,
        this.otpVarifyStatus});

  Data.fromJson(Map<String, dynamic> json) {
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
    data['otp'] = this.otp;
    data['otp_varify_status'] = this.otpVarifyStatus;
    return data;
  }
}
