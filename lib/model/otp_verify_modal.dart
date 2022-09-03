class OtpVerifyModal {
  String? id;
  String? firstName;
  String? lastName;
  String? mobile;
  String? otp;
  String? otpVarifyStatus;
  String? message;

  OtpVerifyModal(
      {this.id,
        this.firstName,
        this.lastName,
        this.mobile,
        this.otp,
        this.otpVarifyStatus,
        this.message});

  OtpVerifyModal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    mobile = json['mobile'];
    otp = json['otp'];
    otpVarifyStatus = json['otp_varify_status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['mobile'] = this.mobile;
    data['otp'] = this.otp;
    data['otp_varify_status'] = this.otpVarifyStatus;
    data['message'] = this.message;
    return data;
  }
}


