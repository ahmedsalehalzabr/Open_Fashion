import 'package:flutter/material.dart';

class PlaceOrder extends StatelessWidget {
  const PlaceOrder({super.key, required this.image, required this.name, required this.description, required this.qty, required this.total, required this.price});

  final String image;
  final String name;
  final String description;
  final int price;
  final int qty;
  final int total;
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
