import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  static double pageView = screenHeight / 2.9;
  // 932/220
  static double pageViewContainer = screenHeight / 4.24;
  static double pageTextContainer = screenHeight / 7.76;
  // Dynamic height padding and margin
  static double height10 = screenHeight / 93.2;
  static double height20 = screenHeight / 46.6;
  static double height15 = screenHeight / 62.13;
  static double height30 = screenHeight / 31.07;
  static double height12 = screenHeight / 77.67;
  static double height45 = screenHeight / 20.71;
  static double height125 = screenHeight / 7.46;
  //Dynamic Width padding and margin
  static double width10 = screenHeight / 93.2;
  static double width20 = screenHeight / 46.6;
  static double width15 = screenHeight / 62.13;
  static double width30 = screenHeight / 31.07;
  static double width45 = screenHeight / 20.71;

  // Font
  static double font20 = screenHeight / 46.6;
  static double font12 = screenHeight / 77.67;
  static double font16 = screenHeight / 58.25;
  static double font30 = screenHeight / 31.07;
  static double font26 = screenHeight / 35.85;

  // Radius
  static double radius20 = screenHeight / 46.6;
  static double radius30 = screenHeight / 31.07;
  static double radius15 = screenHeight / 62.13;
  static double radius5 = screenHeight / 186.4;

  // Icon Size
  static double iconSize24 = screenHeight / 38.83;
  static double iconSize16 = screenHeight / 58.25;

  // Dots Size
  static double dotSize9 = screenHeight / 103.56;
  static double dotSize18 = screenHeight / 51.78;

  // List view size 430
  static double listViewImgSize = screenWidth / 3.58;
  static double listViewTextContSize = screenWidth / 4.3;

  //popular Food
  static double popularFoodImgSize = screenHeight / 2.66;
}
