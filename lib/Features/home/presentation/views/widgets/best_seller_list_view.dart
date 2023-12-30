import 'package:bookly/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context,index){
          return const BestSellerListViewItem();
        },
        separatorBuilder: (context,index){
          return const SizedBox(
            height: 20,
          );
        },
        itemCount: 20);
  }
}
