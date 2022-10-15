class AddToCardModel {
  String? id;
  String? userId;
  String? packageId;
  String? type;
  String? price;
  String? strtotime;
  String? result;

  AddToCardModel(
      {this.id,
        this.userId,
        this.packageId,
        this.type,
        this.price,
        this.strtotime,
        this.result});

  AddToCardModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    packageId = json['package_id'];
    type = json['type'];
    price = json['price'];
    strtotime = json['strtotime'];
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['package_id'] = this.packageId;
    data['type'] = this.type;
    data['price'] = this.price;
    data['strtotime'] = this.strtotime;
    data['result'] = this.result;
    return data;
  }
}
