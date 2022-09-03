class ResendOtpModal {
  String? message;
  Data? data;

  ResendOtpModal({this.message, this.data});

  ResendOtpModal.fromJson(Map<String, dynamic> json) {
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
  String? firstName;
  String? lastName;
  String? mobile;
  String? otp;
  String? otpVarifyStatus;

  Data(
      {this.id,
        this.firstName,
        this.lastName,
        this.mobile,
        this.otp,
        this.otpVarifyStatus});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    mobile = json['mobile'];
    otp = json['otp'];
    otpVarifyStatus = json['otp_varify_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['mobile'] = this.mobile;
    data['otp'] = this.otp;
    data['otp_varify_status'] = this.otpVarifyStatus;
    return data;
  }
}