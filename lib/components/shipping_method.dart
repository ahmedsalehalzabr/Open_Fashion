import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/Screens/place_order.dart';

class ShippingMethod extends StatelessWidget {
  const ShippingMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gap(20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: CustomContainer("Pickup at store", Icons.keyboard_arrow_down_sharp,true),
        ),
        Gap(40),
      ],
    );
  }
}
