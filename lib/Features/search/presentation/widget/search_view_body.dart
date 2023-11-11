import 'package:flutter/material.dart';

import '../../../../core/utlis/stlye.dart';
import '../../../home/presentation/widget/best_seller__item.dart';
import '../../../home/presentation/widget/custom_books_under.dart';
import 'custom_appBar_seaeh_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          SizedBox(height: 25),
          CustomAppBaSearch(),
          SizedBox(height: 20),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Search Result',
              style: Styles.textStyle14,
            ),
          ),
          SizedBox(height: 15),
          Expanded(child: BestSellerItemSearchView()),
        ],
      ),
    );
  }
}

class BestSellerItemSearchView extends StatelessWidget {
  const BestSellerItemSearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: MediaQuery.of(context).size.height*.3,
      child: ListView.builder(
          itemCount: 10,

          itemBuilder: (context, index){
            return const Padding(
              padding:  EdgeInsets.symmetric(horizontal:0),
              child: BestSellerItem(),
            );
          }),
    );
  }
}
