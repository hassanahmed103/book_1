import 'package:flutter/material.dart';
import '../../../../core/utlis/asset_constant.dart';


class CustomListItem extends StatelessWidget {
  const CustomListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  AspectRatio(
      aspectRatio:3.0/4.6,
      child: Container(
        decoration:const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.test),
            )
        ),
      ),
    );
  }
}