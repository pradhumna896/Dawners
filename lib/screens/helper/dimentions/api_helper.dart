
import 'dart:convert';

import 'package:dawners/model/premium_package_details_model.dart';
import 'package:dawners/model/show_user_service_model.dart';
import 'package:dawners/screens/helper/api_network.dart';
import 'package:dawners/screens/helper/sessionmanager.dart';
import 'package:dawners/screens/package_details.dart';
import 'package:http/http.dart' as http;
class ApiHelper{


  static List<PremiumPackageDetailsModel> premiumPackageDetailList = [];
  static getPremiumPackageDetails() async {
    final response =
    await http.post(Uri.parse(ApiNetwork.userPremiumPackageDetail));

    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body);
      premiumPackageDetailList = List<PremiumPackageDetailsModel>.from(
          jsonResponse.map((e) => PremiumPackageDetailsModel.fromJson(e)));
    }
  }

 static List<UserShowServiceModel> showUserServiceList = [];

  static getUserService() async {
    final response =
    await http.post(Uri.parse(ApiNetwork.showUserService));

    if (response.statusCode == 200) {
      List jsonResponse = jsonDecode(response.body);
      showUserServiceList = List<UserShowServiceModel>.from(
          jsonResponse.map((e) => UserShowServiceModel.fromJson(e)));
    }
  }

}