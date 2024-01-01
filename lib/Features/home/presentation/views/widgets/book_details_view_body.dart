import 'package:bookly/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/Features/home/presentation/views/widgets/suggestions_list_view.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'books_action.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              const SizedBox(
                height: 36,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.29,
                ),
                child: const CustomBookImage(),
              ),
              const SizedBox(
                height: 43,
              ),
              const Text(
                'The Jungle Book',
                style: Styles.textStyle30,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const BookRating(),
              const SizedBox(
                height: 37,
              ),
              const BooksAction(),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 30),
                child: SuggestionsListView(),
              ),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        )
      ],
    );
  }
}
