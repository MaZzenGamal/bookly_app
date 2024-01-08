import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'custom_search_form_field.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key,});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18),
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                IconButton(onPressed: (){
                  GoRouter.of(context).pop();
                }, icon: const Icon(
                  Icons.arrow_back
                )),
                Expanded(child: Center(child: CustomSearchFormField())),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 30, bottom: 8),
          child: Text(
            'Result',
            style: Styles.textStyle18,
          ),
        ),
        const Expanded(child: SearchResultListView()),
      ],
    );
  }
}


