import 'package:book_1/Features/home/presentation/widget/smailer_list_view_details.dart';
import 'package:flutter/material.dart';

import '../../../../core/utlis/stlye.dart';


class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'You Can Also Like',
            style: Styles.textStyle14
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const SimilarBooksListView(),

      ],
    );
  }
}