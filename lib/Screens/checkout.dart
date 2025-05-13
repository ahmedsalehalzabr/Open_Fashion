import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/components/custom_appbar.dart';
import 'package:open_fashion/components/custom_text.dart';
import 'package:open_fashion/core/colors.dart';

import '../components/header.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.description
  });

  final String image;
  final String name;
  final double price;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(isBlackk: false),
      body: Column(
        children: [
          Header(title: 'Checkout',),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("assets/cover/cover1.png",width: 120,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(10),
                  CustomText(text: "telameceixt".toUpperCase(),spacing: 4,color: AppColors.primary,),
                  Gap(10),
                  CustomText(text: "telameceixt any things for".toUpperCase(),spacing: 2,color: AppColors.primary,),

                ],
              )
            ],
          )
        ],
      ),

    );
  }
}
