import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.08,
        ),
        const FeaturesBooksListView(),
        const Padding(
          padding: EdgeInsets.only(top: 60, left: 20,bottom: 20),
          child: Text('Best Seller',style: Styles.textStyle18,),
        ),
        const BestSellerListView()
      ],
    );
  }
}


