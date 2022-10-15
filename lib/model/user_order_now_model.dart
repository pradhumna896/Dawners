class UserOrderNowModel {
  List<Data>? data;
  String? result;

  UserOrderNowModel({this.data, this.result});

  UserOrderNowModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['result'] = this.result;
    return data;
  }
}

class Data {
  String? id;
  String? userId;
  String? orderId;
  String? packageId;
  String? grandTotal;
  String? date;
  String? time;
  String? paymentType;
  String? strtotime;

  Data(
      {this.id,
        this.userId,
        this.orderId,
        this.packageId,
        this.grandTotal,
        this.date,
        this.time,
        this.paymentType,
        this.strtotime});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    orderId = json['order_id'];
    packageId = json['package_id'];
    grandTotal = json['grand_total'];
    date = json['date'];
    time = json['time'];
    paymentType = json['payment_type'];
    strtotime = json['strtotime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['order_id'] = this.orderId;
    data['package_id'] = this.packageId;
    data['grand_total'] = this.grandTotal;
    data['date'] = this.date;
    data['time'] = this.time;
    data['payment_type'] = this.paymentType;
    data['strtotime'] = this.strtotime;
    return data;
  }
}
