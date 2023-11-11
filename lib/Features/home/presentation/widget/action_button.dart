import 'package:flutter/material.dart';
import '../../../../core/widget/custom_buttom.dart';


class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.0),
      child:  Row(
        children: [
          Expanded(
            child: CustomButton(
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
              backgroundColor: Colors.white,
              text: r'19.88 $',
            ),
          ),
          Expanded(
            child: CustomButton(
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              backgroundColor: Colors.orangeAccent,
              text: 'free preview',
            ),
          ),
        ],
      ),
    );
  }
}