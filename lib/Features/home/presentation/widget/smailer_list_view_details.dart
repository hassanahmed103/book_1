import 'package:flutter/cupertino.dart';


import 'custom_books_under.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return
      SizedBox(
        height: MediaQuery.of(context).size.height*.2,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            padding: EdgeInsets.zero,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const Padding(
                padding: EdgeInsets.symmetric(horizontal:0),
                child: CustomBookItemUnder()
              );
            }),
      );
  }
}
