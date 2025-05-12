import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
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

          Column(
            children: [
              Gap(120),
              Image.asset("assets/cover/cover1.png"),
              Gap(20),
            ],
          )
        ],
      ),
    );
  }
}
