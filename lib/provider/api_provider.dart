import 'dart:convert';

import 'package:dawners/model/add_vehicle_modal.dart';
import 'package:dawners/model/package_details_model.dart';
import 'package:dawners/model/show_admin_comment_model.dart';
import 'package:dawners/model/faq_model.dart';
import 'package:dawners/model/show_admin_comment_model.dart';
import 'package:dawners/model/show_user_model.dart';
import 'package:dawners/screens/helper/api_network.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiProvider with ChangeNotifier{

  int selectContainer = -1;
  void isSelectedContainer(int index){
    selectContainer =index;
    notifyListeners();
  }
  int quantity = 0;
  void quantitiMinus(){
    if(quantity>0){
      quantity--;
    }
    notifyListeners();
  }
  void quantitiPlus(){

      quantity++;

    notifyListeners();
  }

  Future<AddVehicleModal> getVehicle() async {
    final response = await http
        .post(Uri.parse(ApiNetwork.userAddVehicle), body: {'category_id': '1'});
    if (response.statusCode == 200) {
      return AddVehicleModal.fromJson(jsonDecode(response.body));
    } else {
      return AddVehicleModal(message: 'failed');
    }

  }

  List<FaqModel> faqList = [];
  getFaqData()async{
    final response = await http.post(Uri.parse(ApiNetwork.faqUrl),body: {
      "premium_package_id": "1",
    });
    if(response.statusCode == 200){
      List jsonResponse = jsonDecode(response.body);
      faqList = List<FaqModel>.from(jsonResponse.map((e) => FaqModel.fromJson(e)));
      print(faqList.length);
    }else{
      print("error");
    }

  }

  List<ShowAdminCommentModel> showAdminCommentList = [];
  getAdminCommentData()async{
    final response = await http.post(Uri.parse(ApiNetwork.showAdminComment),body: {
      "premium_package_id": "1",
    });
    if(response.statusCode == 200){
      List jsonResponse = jsonDecode(response.body);
      showAdminCommentList = List<ShowAdminCommentModel>.from(jsonResponse.map((e) => ShowAdminCommentModel.fromJson(e)));

    }else{
      print("error");
    }

  }




  List<PackageDetailsModel> showPackageDetailsList = [];
  getPackageDetailsData()async{
    final response = await http.post(Uri.parse(ApiNetwork.userPremiumPackageDetails),body: {
      "id": "1",
    });
    if(response.statusCode == 200){
      List jsonResponse = jsonDecode(response.body);
      showPackageDetailsList = List<PackageDetailsModel>.from(jsonResponse.map((e) => PackageDetailsModel.fromJson(e)));
     print( showPackageDetailsList);


    }else{
      print("error");
    }

  }

    List<ShowUserSheduleModel> showUserSheduleList = [];
    showUserShedule()async{
    final response = await http.post(Uri.parse(ApiNetwork.showUserShedule),body: {
      'user_id':'1'
    });
    if(response.statusCode==200){
      List jsonResponse = jsonDecode(response.body);
      showUserSheduleList = List<ShowUserSheduleModel>.from(jsonResponse.map((e) => ShowUserSheduleModel.fromJson(e)));
      print(" hello $showUserSheduleList");

    }else{
      print("Error");
    }


  }
}