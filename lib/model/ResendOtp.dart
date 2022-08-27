class ResendOtp {
  String? message;
  Data? data;

  ResendOtp({this.message, this.data});

  ResendOtp.fromJson(Map<String, dynamic> json) {
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
  String? userName;
  String? mobile;
  String? password;
  String? otp;
  String? otpVarifyStatus;

  Data(
      {this.id,
        this.userName,
        this.mobile,
        this.password,
        this.otp,
        this.otpVarifyStatus});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['user_name'];
    mobile = json['mobile'];
    password = json['password'];
    otp = json['otp'];
    otpVarifyStatus = json['otp_varify_status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_name'] = this.userName;
    data['mobile'] = this.mobile;
    data['password'] = this.password;
    data['otp'] = this.otp;
    data['otp_varify_status'] = this.otpVarifyStatus;
    return data;
  }
}