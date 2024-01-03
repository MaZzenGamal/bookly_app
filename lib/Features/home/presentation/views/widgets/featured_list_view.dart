import 'package:bookly/Features/home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/core/utils/custom_loading_indicator.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'featured_list_view_item.dart';

class FeaturesBooksListView extends StatelessWidget {
  const FeaturesBooksListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 30),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return BuildFeaturedListViewItem(
                      imageUrl:
                          state.books[index].volumeInfo!.imageLinks!.thumbnail!,
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 16,
                    );
                  },
                  itemCount: state.books.length),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorMessage(errorMessage: state.error);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
