import 'package:book_1/Features/home/presentation/view/widget/details_view_body.dart';
import 'package:flutter/material.dart';



class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child:  Scaffold(
        body: DetailsViewBody(),
      ),
    );
  }
}
