import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

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
          child: const CustomBookImage(
            imageUrl:
                'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/contemporary-fiction-night-time-book-cover-design-template-1be47835c3058eb42211574e0c4ed8bf_screen.jpg?ts=1698210220',
          ),
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
      ],
    );
  }
}
