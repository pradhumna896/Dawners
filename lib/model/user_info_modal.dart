class UserInfoModal {
  Data? data;
  String? message;

  UserInfoModal({this.data, this.message});

  UserInfoModal.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    data['message'] = this.message;
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


