import 'package:flutter/material.dart';

import '../../../../core/utlis/stlye.dart';
import 'action_button.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';
class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomBookItem(),
        const SizedBox(
          height: 14,
        ),
        const Text('The Jungle Book ', style: Styles.textStyle30),
        const SizedBox(
          height: 5,
        ),
        Opacity(
          opacity: .5,
          child: Text('Rudyard Kipling ',
              style: Styles.textStyle14.copyWith(fontStyle: FontStyle.italic)),
        ),
        const SizedBox(
          height: 6,
        ),
        const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          BookRating(),
        ]),
        const ActionButton(),

      ],
    );
  }
}
