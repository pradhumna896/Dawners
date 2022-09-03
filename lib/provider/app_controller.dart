import 'package:flutter/cupertino.dart';

class AppController with ChangeNotifier{
  int currentIndex = 0;
  void selectedPage(int index){
    currentIndex = index;
    notifyListeners();
  }
  bool isvisible = false;

  void visibleOne(bool index){
    isvisible =!isvisible;
    notifyListeners();

  }
  int mediacurrentIndex = 0;
  void mediaselectedPage(int index){
    mediacurrentIndex = index;
    notifyListeners();
  }
  int stepperProgress=1;
  String stepTitle = 'Add Vehicle';
  void stepperProgressPage(int index){
    stepperProgress=index;


    if(stepperProgress == 1){
      stepTitle = 'Add Vehicle';
    }else if(stepperProgress == 2){
      stepTitle = 'Choose Package';
    }else if(stepperProgress == 3){
      stepTitle = 'Preferred Start Date';
    }else{
      stepTitle = 'Add Address';

    }
    notifyListeners();

  }
  int currentIndexPageview=0;
  void currentIndexPageviewUpgrade(int index){
    currentIndexPageview=index;
    notifyListeners();

  }

  int paymentCurrentIndexPageview=0;
  void paymentCurrentIndexPageviewJackpot(int index){
    paymentCurrentIndexPageview=index;
    notifyListeners();

  }

  int onSelect = -1;
  void onSelectIndex(int index){
    onSelect = index
    ;
    notifyListeners();
  }

  int checkCleanerPositioned =0;
  void cleanerPositionedStatus(int index){
    checkCleanerPositioned = index;
    notifyListeners();
  }

  String buttonName = "Choose Package";
  void changeButtonName(String button){
    buttonName = button;
    notifyListeners();
  }
}


