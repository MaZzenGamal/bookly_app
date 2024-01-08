import 'package:bookly/Features/home/data/models/book_model/Book_model.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const SizedBox(
          height: 36,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.29,
          ),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          textAlign: TextAlign.center,
          bookModel.volumeInfo!.title!,
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        if (bookModel.volumeInfo!.authors!.isNotEmpty)
          Text(
            bookModel.volumeInfo!.authors![0],
            style: Styles.textStyle18.copyWith(
              color: Colors.white.withOpacity(0.7),
            ),
          ),
        const SizedBox(
          height: 16,
        ),
        BookRating(
          count: bookModel.volumeInfo?.pageCount ?? 0,
        ),
        const SizedBox(
          height: 37,
        ),
         BooksAction(bookModel: bookModel),
      ],
    );
  }
}
