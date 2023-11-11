import 'package:flutter/material.dart';
import '../../../../core/utlis/asset_constant.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*.2),
      child: AspectRatio(
        aspectRatio: 2.55 / 4,
        child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                    AssetsData.test),
              )),
        ),
      ),
    );
  }
}
