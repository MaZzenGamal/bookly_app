import 'package:flutter/material.dart';

import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery
              .of(context)
              .size
              .height * 0.08,
        ),
        const FeaturesBooksListView()],
    );
  }
}


