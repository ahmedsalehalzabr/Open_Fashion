import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:ionicons/ionicons.dart';
import 'package:open_fashion/Models/cover_model.dart';
import 'package:open_fashion/Models/product_model.dart';
import 'package:open_fashion/Screens/checkout.dart';
import 'package:open_fashion/components/custom_text.dart';
import 'package:open_fashion/core/colors.dart';

import '../components/custom_appbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: CustomAppbar(
          isBlackk:true
      ),

      body: Stack(
        children: [
          Positioned(
              top: 10,
              left: 0,
              right: 0,
              child: SvgPicture.asset("assets/texts/10.svg")),
          Positioned(
              top: 85,
              left: 0,
              right: 0,
              child: SvgPicture.asset("assets/texts/Collection.svg")),
          Positioned(
              top: 40,
              left: 0,
              right: 0,
              child: SvgPicture.asset("assets/texts/October.svg")),

          SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      Gap(120),
                      Image.asset("assets/cover/cover1.png"),
                      Gap(20),
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: ProductModel.products.length,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                            crossAxisSpacing: 15,
                            mainAxisSpacing: 0,
                            childAspectRatio: 0.50,
                          ),
                        itemBuilder: (context, index){
                          final item = ProductModel.products[index];
                            return GestureDetector(
                              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (c) => Checkout(
                                image: item.image,
                                name: item.name,
                                price: item.price,
                                description: item.description,
                              ))),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(item.image),
                                  Gap(10),
                                  CustomText(text: item.name),
                                  CustomText(text: item.description,color: Colors.grey,),
                                  Gap(9),
                                  CustomText(text: "\$ ${item.price.toString()}",
                                  color: Colors.red.shade200,
                                  size: 20,),
                                ],
                              ),
                            );
                        },
                      ),
                      Gap(20),
                      CustomText(text: "You may also like".toUpperCase(),size: 26,),
                      Gap(10),
                      Image.asset("assets/svgs/line.png",width: 190,),
                      Gap(40),
                      SizedBox(
                        height: 400,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: CoverModel.cover.length,
                            itemBuilder: (context,index) {
                              final item = CoverModel.cover[index];
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(item.image,height: 337,
                                    fit: BoxFit.cover,),
                                    Gap(10),
                                    CustomText(text: item.name.toUpperCase(),size: 26,)
                                  ],
                                ),
                              );
                            }
                        ),
                      ),
                      Gap(40),
                      about(),
                      Gap(20)
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Color(0xffC4C4C4),
                  child: Center(
                    child: CustomText(
                      max: 3,
                      height: 2.5,
                      text: "Copyrighte Eng/ Ahmed Al-Zabr ",
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
Widget about() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Ionicons.logo_twitter,color: Colors.white,),
          Gap(15),
          Icon(Ionicons.logo_instagram,color: Colors.white,),
          Gap(15),
          Icon(Ionicons.logo_facebook,color: Colors.white,),
        ],
      ),
      Gap(20),
      Image.asset("assets/svgs/line.png",width: 190,),
      Gap(20),
      CustomText(
        max: 3,
        height: 2.5,
        text: "support@openui.design \n        +60 825 876 \n 09:00 - 24:00 - Everyday",
      ),
      Gap(20),
      Image.asset("assets/svgs/line.png",width: 190,),
      Gap(20),
      CustomText(
        max: 3,
        height: 2.5,
        text: "About    Contact    Blog",
      ),
    ],
  );
}