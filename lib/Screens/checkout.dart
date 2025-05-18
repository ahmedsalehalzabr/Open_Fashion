import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/components/cart_widget.dart';
import 'package:open_fashion/components/custom_appbar.dart';
import 'package:open_fashion/components/custom_text.dart';
import 'package:open_fashion/core/colors.dart';

import '../components/header.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.description
  });

  final String image;
  final String name;
  final String price;
  final String description;

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(isBlackk: false),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Header(title: 'Checkout',),
            CartWidget(image: widget.image, name: widget.name, price: widget.price, description: widget.description)
          ],
        ),
      ),

    );
  }
}
