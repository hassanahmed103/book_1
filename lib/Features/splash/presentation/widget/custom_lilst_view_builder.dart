
import 'package:flutter/material.dart';

import 'custom_item.dart';
class CustomListViewBuilder extends StatelessWidget {
  const CustomListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:MediaQuery.of(context).size.height *.30,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index) {
            return const CustomListItem();
          }),
    );
  }
}