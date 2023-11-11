import 'package:flutter/material.dart';
import '../../../../core/utlis/asset_constant.dart';

class CustomBookItemUnder extends StatelessWidget {
  const CustomBookItemUnder({
    super.key,

  });



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0),
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
