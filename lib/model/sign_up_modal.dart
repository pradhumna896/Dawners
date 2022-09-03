class SignUpModal {
  String? id;
  String? firstName;
  String? lastName;
  String? mobile;
  String? otp;
  String? otpVarifyStatus;
  String? result;

  SignUpModal(
      {this.id,
        this.firstName,
        this.lastName,
        this.mobile,
        this.otp,
        this.otpVarifyStatus,
        this.result});

  SignUpModal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    mobile = json['mobile'];
    otp = json['otp'];
    otpVarifyStatus = json['otp_varify_status'];
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['mobile'] = this.mobile;
    data['otp'] = this.otp;
    data['otp_varify_status'] = this.otpVarifyStatus;
    data['result'] = this.result;
    return data;
  }
}