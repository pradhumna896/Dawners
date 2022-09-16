import 'package:flutter/cupertino.dart';
class CardController with ChangeNotifier{

  int cardIndex=0;
  void cardIndexPage(int index){
    cardIndex =index;
    notifyListeners();
  }
  int cardIndexPayment=0;
  void cardIndexPagePayment(int index){
    cardIndexPayment =index;
    notifyListeners();
  }

  int reviewDetailOne=0;
  void reviewDetalOnePage(int index){
    reviewDetailOne=index;
    notifyListeners();
  }
  int homeIndex=0;
  void homeIndexPage(int index) {
    homeIndex=index;
    notifyListeners();
  }

  int selectIcon=0;
  void selectIconPage(int index){
    selectIcon=index;
    notifyListeners();
  }

  int subscriptionDotIndex=0;
  void subsciptionDotPage(int index){
    subscriptionDotIndex=index;
    notifyListeners();
  }

  bool isSwitch=false;
  void isToggleSwitch(bool index){
    isSwitch=!isSwitch;
    notifyListeners();
  }

  bool isAutopaySwitch=false;
  void isAutopayToggle(bool index){
    isAutopaySwitch=! isAutopaySwitch;
    notifyListeners();
  }
  bool isManualSwitch=false;
  void isManualToggle(bool index){
    isManualSwitch=! isManualSwitch;
    notifyListeners();
  }
  int homeWhiteIndex=0;
  void homeWhiteIndexPage(int index) {
    homeWhiteIndex=index;
    notifyListeners();
  }

  bool isManualSwitchForService=false;
  void isManualToggleForService(bool index){
    isManualSwitch=! isManualSwitch;
    notifyListeners();
  }


  bool isVisible=false;
  void isvisibleContainer(bool index){
    isVisible=!isVisible;
    notifyListeners();
  }

  bool isReferral= false;
  void isReferralStatus(bool status){
    isReferral = status;
    notifyListeners();
  }

}