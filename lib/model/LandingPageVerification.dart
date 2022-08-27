class LandingPageVerification {
  String? id;
  String? userName;
  String? mobile;
  String? password;
  String? otp;
  String? otpVarifyStatus;
  String? result;

  LandingPageVerification(
      {this.id,
        this.userName,
        this.mobile,
        this.password,
        this.otp,
        this.otpVarifyStatus,
        this.result});

  LandingPageVerification.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['user_name'];
    mobile = json['mobile'];
    password = json['password'];
    otp = json['otp'];
    otpVarifyStatus = json['otp_varify_status'];
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_name'] = this.userName;
    data['mobile'] = this.mobile;
    data['password'] = this.password;
    data['otp'] = this.otp;
    data['otp_varify_status'] = this.otpVarifyStatus;
    data['result'] = this.result;
    return data;
  }
}
