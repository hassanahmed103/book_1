import 'package:flutter/material.dart';

import '../widget/details_view_body.dart';

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
