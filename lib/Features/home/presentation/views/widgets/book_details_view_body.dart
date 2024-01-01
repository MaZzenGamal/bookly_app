import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'suggestions_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              BookDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SuggestionsBooksSection(),
              SizedBox(
                height: 25,
              )
            ],
          ),
        )
      ],
    );
  }
}



