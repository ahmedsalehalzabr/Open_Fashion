import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:open_fashion/Screens/add_address.dart';
import 'package:open_fashion/components/custom_appbar.dart';
import 'package:open_fashion/components/custom_button.dart';
import 'package:open_fashion/components/custom_text.dart';
import 'package:open_fashion/components/header.dart';
import 'package:open_fashion/core/colors.dart';

class PlaceOrder extends StatefulWidget {
  const PlaceOrder({super.key, 
    required this.image, 
    required this.name, 
    required this.description, 
    required this.qty, 
    required this.total, 
    required this.price
  });

  final String image;
  final String name;
  final String description;
  final int price;
  final int qty;
  final int total;

  @override
  State<PlaceOrder> createState() => _PlaceOrderState();
}

class _PlaceOrderState extends State<PlaceOrder> {

 dynamic _savedAddress;
  void _openAddress(context) async {
    final addressData = await Navigator.push(
        context,
        MaterialPageRoute(builder: (c) => AddAddress()));
    if(addressData != null) {
      setState(() {
        _savedAddress = addressData;
      });
    }
  }
  void _editAddress () async {
    final newAddress = await Navigator.push(
        context,
        MaterialPageRoute(builder: (c) => AddAddress(
          editData: _savedAddress,
        )));
    setState(() {
      _savedAddress = newAddress;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(isBlackk: false),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(title: "Chekout"),

            CustomText(text: "Shipping address".toUpperCase(),color: Colors.black38,size: 16,),
            Gap(13),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  _savedAddress != null ?  GestureDetector(
                    onTap: _editAddress,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(text: "${_savedAddress['first'] + _savedAddress['last']}".toUpperCase(),color: Colors.black,size: 20,),
                            Gap(15),
                            CustomText(text: _savedAddress['address'].toUpperCase(),color: Colors.black38,size: 17,),
                            Gap(10),
                            CustomText(text: _savedAddress['city'].toUpperCase(),color: Colors.black38,size: 17,),
                            Gap(10),
                            CustomText(text: "(${_savedAddress['phone']})".toUpperCase(),color: Colors.black38,size: 17,),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_rounded,color: Colors.grey,),
                      ],
                    ),
                  ) : SizedBox.shrink(),
                  Gap(20),
                  _savedAddress == null ?   GestureDetector(
                    onTap: (){
                      _openAddress(context);
                    },
                      child: CustomContainer("Add Shipping Address", Icons.add,false)) : SizedBox.shrink(),
                ],
              ),
            ),
            Gap(40),
            CustomText(text: "Shipping Method".toUpperCase(),color: Colors.black38,size: 16,),
            Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: CustomContainer("Pickup at store", Icons.keyboard_arrow_down_sharp,true),
            ),
            Gap(40),
            CustomText(text: "Shipping Method".toUpperCase(),color: Colors.black38,size: 16,),
            Gap(20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: CustomContainer("Select Payment Method", Icons.keyboard_arrow_down_sharp,false),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(text: "Est. Total",color: AppColors.primary,),
                CustomText(text: "\$ ${widget.total}",color: AppColors.primary,),
              ],
            ),
            Gap(20),
            CustomButton(
              isSvgg: true,
              title: "Place Order",
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (c){
                //   return PlaceOrder(image:image, name: name, description:description, qty: selectedQty, total: price * selectedQty, price: price,);
                // }));
              },
            ),

          ],
        ),
      ),
    );
  }
}

Widget CustomContainer(text,icon,isFree) {
  return    Container(
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 14),
    decoration: BoxDecoration(
      color: Colors.grey.shade100,
      borderRadius: BorderRadius.circular(20),
    ),
    width: double.infinity,
    child:Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(text: text,color: Colors.black,),
        Spacer(),

       isFree ? CustomText(text: "FREE",color: Colors.black,) : SizedBox.shrink(),
        Gap(15),
        Icon(icon),
      ],
    ) ,
  );
}