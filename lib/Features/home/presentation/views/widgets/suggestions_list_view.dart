import 'package:bookly/Features/home/presentation/views/widgets/suggestions_list_view_item.dart';
import 'package:flutter/material.dart';

class SuggestionsListView extends StatelessWidget {
  const SuggestionsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const SuggestionsListViewItem();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 8,
            );
          },
          itemCount: 10),
    );
  }
}
