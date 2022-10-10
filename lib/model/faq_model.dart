class FaqModel {
  String? id;
  String? premiumPackageId;
  String? question;
  String? answer;


  FaqModel({this.id, this.premiumPackageId, this.question, this.answer});

  FaqModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    premiumPackageId = json['premium_package_id'];
    question = json['question'];
    answer = json['answer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['premium_package_id'] = this.premiumPackageId;
    data['question'] = this.question;
    data['answer'] = this.answer;
    return data;
  }
}
