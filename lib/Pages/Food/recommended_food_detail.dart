import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivery_application/utils/colors.dart';
import 'package:food_delivery_application/utils/dimensions.dart';
import 'package:food_delivery_application/widgets/app_icon.dart';
import 'package:food_delivery_application/widgets/big_text.dart';

import 'package:food_delivery_application/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 80,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined)
              ],
            ),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  child: Center(
                      child: BigText(
                          size: Dimensions.font26, text: "Chinese Side ")),
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(Dimensions.radius20),
                        topRight: Radius.circular(Dimensions.radius20),
                      )),
                )),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/food0.png",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              Container(
                child: ExpandableTextWidget(
                  text:
                      "In a culinary realm where creativity and passion intertwine, the chicken dish stands as an emblem of gastronomic excellence. From the moment it arrives at the table, the captivating aroma of the dish begins its enchanting dance, beckoning diners to indulge in its flavorful offerings. Prepared with meticulous attention to detail, this chicken creation is a testament to the chef's artistry and dedication to the culinary craft. At the heart of this masterpiece lies the chicken itself, carefully sourced and expertly prepared to ensure the utmost tenderness and juiciness. The chef's choice of the finest cuts of chicken reflects a commitment to quality that sets this dish apart. The meat is thoughtfully marinated, infusing it with a delicate blend of herbs, spices, and aromatic ingredients, each chosen to elevate the flavor profile to new heights. As the dish is brought to the table, one's eyes are immediately drawn to the captivating sight of the glistening golden-brown exterior of the chicken. The skin, perfectly crisped to a tantalizing crunch, is a harbinger of the delights to come. The mere anticipation of the first bite sends a rush of excitement through diners, knowing they are about to embark on a journey of culinary bliss. Upon taking that first bite, the senses are treated to a symphony of flavors. The initial crunch gives way to a burst of succulent juiciness, releasing a fusion of tastes that dance across the palate. The carefully crafted marinade imparts a depth of flavor that tantalizes with hints of smokiness, warmth, and a subtle tang that leaves a lingering impression. To complement the star of the dish, an array of perfectly roasted vegetables graces the plate. An assortment of vibrant colors, from roasted carrots and parsnips to tender asparagus and cherry tomatoes, adds not only a visual spectacle but also a delightful medley of textures. Each vegetable retains its natural sweetness, enhanced by the caramelization achieved during roasting, providing a balance of earthiness and brightness to the overall ensemble. Completing this gastronomic symphony is the crowning glory – a velvety sauce that envelops the chicken and vegetables in a harmony of flavors. The sauce, crafted with skill and finesse, strikes a delicate balance between creamy and savory, infused with subtle hints of herbs and spices that enhance the overall experience. Its silky texture gently coats each element of the dish, tying them together in a culinary embrace. As diners relish each mouthful, the atmosphere around the table fills with a sense of pure enjoyment. Conversations ebb and flow, punctuated by moments of awe and appreciation for the culinary artistry on display. Every bite becomes a shared experience, as smiles and nods of approval pass between those who have discovered the magic of this chicken dish. While the meal may come to an end, the memory of this extraordinary culinary journey lingers long after the plates are cleared. The chicken dish leaves an indelible mark on the palates and hearts of those fortunate enough to savor its delights. It stands as a testament to the transformative power of food, transcending the ordinary to become an extraordinary symphony of taste, texture, and creativity. Truly, this chicken dish is a culinary marvel that will be fondly remembered and cherished by all who partake in its splendor.",
                ),
                margin: EdgeInsets.only(
                    left: Dimensions.width20, right: Dimensions.width20),
              ),
            ],
          ))
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: "\Rs12.88 " + " X " + " 0",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add)
              ],
            ),
          ),
          Container(
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
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                    child: Icon(
                      Icons.favorite,
                      color: AppColors.mainColor,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        top: Dimensions.height20,
                        bottom: Dimensions.height20,
                        left: Dimensions.width20,
                        right: Dimensions.width20),
                    child: BigText(
                        text: "\Rs 1000 | Add to cart", color: Colors.white),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius20),
                        color: AppColors.mainColor),
                  )
                ]),
          ),
        ],
      ),
    );
  }
}
