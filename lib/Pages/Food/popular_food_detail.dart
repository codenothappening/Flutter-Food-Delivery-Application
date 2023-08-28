import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_application/Pages/Home/main_food_page.dart';
import 'package:food_delivery_application/controllers/popular_product_controller.dart';
import 'package:food_delivery_application/utils/app_contants.dart';
import 'package:food_delivery_application/utils/dimensions.dart';
import 'package:food_delivery_application/widgets/app_column.dart';
import 'package:food_delivery_application/widgets/app_icon.dart';
import 'package:food_delivery_application/widgets/expandable_text_widget.dart';
import 'package:get/get.dart';

import '../../utils/colors.dart';
import '../../widgets/big_text.dart';

class PopularFoodDetail extends StatelessWidget {
  final int pageId;
  const PopularFoodDetail({super.key, required this.pageId});

  @override
  Widget build(BuildContext context) {
    var product =
        Get.find<PopularProductController>().popularProductList[pageId];
    //print("Page id is " + pageId.toString());
    //print("Product name is " + product.name.toString());

    Get.find<PopularProductController>().initProduct();
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // background Image
          Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.maxFinite,
                height: Dimensions.popularFoodImgSize,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(AppContants.BASE_URL +
                            AppContants.UPLOAD_URL +
                            product.img))),
              )),
          // Icon Widget
          Positioned(
              top: Dimensions.height45,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => MainFoodPage());
                    },
                    child: AppIcon(
                      icon: Icons.arrow_back_ios,
                    ),
                  ),
                  AppIcon(
                    icon: Icons.shopping_cart_outlined,
                  )
                ],
              )),
          // Introduction to food
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: Dimensions.popularFoodImgSize - 20,
              child: Container(
                padding: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(Dimensions.radius20),
                      topLeft: Radius.circular(Dimensions.radius20),
                    ),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppColumn(text: product.name!),
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    BigText(text: "Introduce"),
                    // Expandable text widget
                    SizedBox(
                      height: Dimensions.height20,
                    ),
                    Expanded(
                        child: SingleChildScrollView(
                      child: ExpandableTextWidget(text: product.description!),
                    ))
                  ],
                ),
              ))
        ],
      ),
      bottomNavigationBar:
          GetBuilder<PopularProductController>(builder: (popularProduct) {
        return Container(
          height: Dimensions.height125,
          padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20),
          decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              )),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white,
              ),
              child: Row(children: [
                GestureDetector(
                  onTap: () {
                    popularProduct.setQuantity(false);
                  },
                  child: Icon(
                    Icons.remove,
                    color: AppColors.signColor,
                  ),
                ),
                SizedBox(width: Dimensions.width10 / 2),
                BigText(text: popularProduct.quantity.toString()),
                SizedBox(width: Dimensions.width10 / 2),
                GestureDetector(
                  onTap: () {
                    popularProduct.setQuantity(true);
                  },
                  child: Icon(
                    Icons.add,
                    color: AppColors.signColor,
                  ),
                ),
              ]),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: Dimensions.height20,
                  bottom: Dimensions.height20,
                  left: Dimensions.width20,
                  right: Dimensions.width20),
              child: BigText(
                  text: "\$ ${product.price!} | Add to cart",
                  color: Colors.white),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimensions.radius20),
                  color: AppColors.mainColor),
            )
          ]),
        );
      }),
    );
  }
}
