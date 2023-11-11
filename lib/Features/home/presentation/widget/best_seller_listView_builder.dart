import 'package:flutter/material.dart';
import 'best_seller__item.dart';
class BestSellerListBuilder extends StatelessWidget {
  const BestSellerListBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
        itemCount: 10,
          physics:const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index){
            return const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15),
              child: BestSellerItem(),
            );
          }),
    );
  }
}