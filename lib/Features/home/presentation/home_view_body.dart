import 'package:book_1/Features/home/presentation/widget/best_seller_listView_builder.dart';
import 'package:book_1/Features/home/presentation/widget/custom_appBar.dart';
import 'package:flutter/material.dart';

import '../../../core/utlis/stlye.dart';
import '../../splash/presentation/widget/custom_lilst_view_builder.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 35,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: CustomAppBar()),
            CustomListViewBuilder(),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Text(
                'Best Seller',
                style: Styles.textStyle14,
              ),
            ),
            SizedBox(height: 15),
          ],
        )),
        SliverFillRemaining(
          child: BestSellerListBuilder(),
        )
      ],
    );
  }
}

/*
* Padding(
      padding:  EdgeInsets.symmetric(horizontal: 15),
      child:   Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35,),
          CustomAppBar(),
          CustomListViewBuilder(),
           SizedBox(height:10),
          Text('Best Seller',style: Styles.textStyle14,),
          SizedBox(height:15),
          BestSellerListViewItem(),
        ],
      ),
    );*/
