class OtpVerify {
  String? id;
  String? userName;
  String? mobile;
  String? password;
  String? otp;
  String? otpVarifyStatus;
  String? message;

  OtpVerify(
      {this.id,
        this.userName,
        this.mobile,
        this.password,
        this.otp,
        this.otpVarifyStatus,
        this.message});

  OtpVerify.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['user_name'];
    mobile = json['mobile'];
    password = json['password'];
    otp = json['otp'];
    otpVarifyStatus = json['otp_varify_status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_name'] = this.userName;
    data['mobile'] = this.mobile;
    data['password'] = this.password;
    data['otp'] = this.otp;
    data['otp_varify_status'] = this.otpVarifyStatus;
    data['message'] = this.message;
    return data;
  }
}