class UserSheduleModel {
  String? id;
  String? userId;
  String? vehicleId;
  String? type;
  String? date;
  String? time;
  String? path;
  String? result;

  UserSheduleModel(
      {this.id,
        this.userId,
        this.vehicleId,
        this.type,
        this.date,
        this.time,
        this.path,
        this.result});

  UserSheduleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    vehicleId = json['vehicle_id'];
    type = json['type'];
    date = json['date'];
    time = json['time'];
    path = json['path'];
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['vehicle_id'] = this.vehicleId;
    data['type'] = this.type;
    data['date'] = this.date;
    data['time'] = this.time;
    data['path'] = this.path;
    data['result'] = this.result;
    return data;
  }
}
