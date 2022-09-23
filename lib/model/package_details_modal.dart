class PackageDetailsModal {
  String? id;
  String? addRowMaterialId;
  String? recommended;
  String? recommendedColor;
  String? susbcribers;
  String? packageTitle;
  String? subPackage;
  String? services;
  String? overviewTitle;
  String? subOverview;
  String? dailyPrice;
  String? firstMonthPrice;
  String? secondMonthPrice;
  String? limitedOffer;
  String? packageTag;
  String? packageTagColor;
  String? strtotime;

  PackageDetailsModal(
      {this.id,
        this.addRowMaterialId,
        this.recommended,
        this.recommendedColor,
        this.susbcribers,
        this.packageTitle,
        this.subPackage,
        this.services,
        this.overviewTitle,
        this.subOverview,
        this.dailyPrice,
        this.firstMonthPrice,
        this.secondMonthPrice,
        this.limitedOffer,
        this.packageTag,
        this.packageTagColor,
        this.strtotime});

  PackageDetailsModal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    addRowMaterialId = json['add_row_material_id'];
    recommended = json['recommended'];
    recommendedColor = json['recommended_color'];
    susbcribers = json['susbcribers'];
    packageTitle = json['package_title'];
    subPackage = json['sub_package'];
    services = json['services'];
    overviewTitle = json['overview_title'];
    subOverview = json['sub_overview'];
    dailyPrice = json['daily_price'];
    firstMonthPrice = json['first_month_price'];
    secondMonthPrice = json['second_month_price'];
    limitedOffer = json['limited_offer'];
    packageTag = json['package_tag'];
    packageTagColor = json['package_tag_color'];
    strtotime = json['strtotime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['add_row_material_id'] = this.addRowMaterialId;
    data['recommended'] = this.recommended;
    data['recommended_color'] = this.recommendedColor;
    data['susbcribers'] = this.susbcribers;
    data['package_title'] = this.packageTitle;
    data['sub_package'] = this.subPackage;
    data['services'] = this.services;
    data['overview_title'] = this.overviewTitle;
    data['sub_overview'] = this.subOverview;
    data['daily_price'] = this.dailyPrice;
    data['first_month_price'] = this.firstMonthPrice;
    data['second_month_price'] = this.secondMonthPrice;
    data['limited_offer'] = this.limitedOffer;
    data['package_tag'] = this.packageTag;
    data['package_tag_color'] = this.packageTagColor;
    data['strtotime'] = this.strtotime;
    return data;
  }
}
