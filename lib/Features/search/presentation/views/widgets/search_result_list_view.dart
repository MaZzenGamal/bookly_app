import 'package:bookly/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/Features/search/presentation/manger/search_cubit/search__cubit.dart';
import 'package:bookly/core/utils/custom_loading_indicator.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        if (state is SearchSuccess) {
          return ListView.separated(
                      itemBuilder: (context, index) {
                        return  BookListViewItem(bookModel: state.books[index],);
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          height: 20,
                        );
                      },
                      itemCount: state.books.length);
        } else if(state is SearchFailure) {
          return CustomErrorMessage(errorMessage: state.error);
        }else if (state is SearchInitial){
          return const Center(child: Text('No Results'));
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}