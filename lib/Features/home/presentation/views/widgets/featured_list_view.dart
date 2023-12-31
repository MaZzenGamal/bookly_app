import 'package:flutter/material.dart';

import 'featured_list_view_item.dart';

class FeaturesBooksListView extends StatelessWidget {
  const FeaturesBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return const BuildFeaturedListViewItem();
            }, separatorBuilder:(context,index){
          return const SizedBox(width: 16,);
        }, itemCount: 5),
      ),
    );
  }
}