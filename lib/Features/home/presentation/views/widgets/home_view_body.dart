import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'best_seller_list_view.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: const SingleChildScrollView(
        child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 57,
                  ),
                  FeaturesBooksListView(),
                  Padding(
                    padding: EdgeInsets.only(top: 60, left: 30, bottom: 20),
                    child: Text(
                      'Best Seller',
                      style: Styles.textStyle18,
                    ),
                  ),
                  BestSellerListView(),
                ],
        ),
      ),
    );
  }
}
