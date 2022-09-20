import 'dart:convert';

import 'package:dawners/model/add_vehicle_modal.dart';
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
}