import 'package:book_1/Features/home/presentation/widget/silimar_books_section.dart';
import 'package:flutter/material.dart';
import 'books_details_section.dart';
import 'custom_appbar_details_view.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                CustomAppBarDetailsView(),
                BookDetailsSection(),

                Expanded(
                  child: SizedBox(
                    height: 50,
                  ),
                ),
                SimilarBooksSection(),
                 SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
