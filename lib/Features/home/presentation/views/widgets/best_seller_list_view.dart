import 'package:bookly/Features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/core/utils/custom_loading_indicator.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.separated(
            shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return BookListViewItem(
                  bookModel: state.books[index],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  height: 20,
                );
              },
              itemCount: state.books.length);
        } else if (state is NewestBooksFailure) {
          return CustomErrorMessage(errorMessage: state.error);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
