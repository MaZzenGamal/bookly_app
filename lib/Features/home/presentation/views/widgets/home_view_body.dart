import 'package:flutter/material.dart';

import 'featured_list_view_item.dart';

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

class FeaturesBooksListView extends StatelessWidget {
  const FeaturesBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
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
