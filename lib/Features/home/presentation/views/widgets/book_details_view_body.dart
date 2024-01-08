import 'package:bookly/Features/home/data/models/book_model/Book_model.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsSection(bookModel: bookModel),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              const SimilarBooksSection(),
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



