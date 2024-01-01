import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'suggestions_list_view.dart';

class SuggestionsBooksSection extends StatelessWidget {
  const SuggestionsBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text(
            'You can also like',
            style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30),
          child: SuggestionsListView(),
        ),
      ],
    );
  }
}
