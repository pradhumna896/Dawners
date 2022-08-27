import 'dart:ui';

class VehiclePackageModel {
  String? image;
  Color? color;
  String? title;
  String? vehicleNumber;
  String? amount;
  String? pack;
  Color? textColor;

  VehiclePackageModel(
      {this.image,
        this.color,
        this.title,
        this.vehicleNumber,
        this.amount,
        this.pack,
        this.textColor
      });

  static List<VehiclePackageModel> vehiclePackage = [
    VehiclePackageModel(
        image: "assets/image/pngegg.png",
        color: const Color(0xffF0EBF8),
        title: "Everyday",
        vehicleNumber: "KA-45-KC 2814",
        amount: "500",
        pack: "Premium Pack",
        textColor: Color(0xff552E97)
    ),
    VehiclePackageModel(
        image: "assets/image/pngegg.png",
        color: const Color(0xffFAF1DF),
        title: "Alternate Day M,W,F",
        vehicleNumber: "KA-45-KC 2814",
        amount: "500",
        pack: "Premium Pack",
        textColor: Color(0xffAA7918)
    ),
    VehiclePackageModel(
        image: "assets/image/bike.png",
        color: const Color(0xffD6F6FF),
        title: "Weekly",
        vehicleNumber: "KA-45-KC 2814",
        amount: "500",
        pack: "Premium Pack",
        textColor: Color(0xff0187AA)
    )
  ];
}
