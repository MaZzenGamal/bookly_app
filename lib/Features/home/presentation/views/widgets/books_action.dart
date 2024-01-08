import 'package:bookly/Features/home/data/models/book_model/Book_model.dart';
import 'package:bookly/core/utils/functions/launch_url.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
    required this.bookModel,
  });

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          onPressed: () {},
          text: 'Free',
          textStyle: Styles.textStyle18,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        CustomButton(
          onPressed: ()  {
            launchCustomUrl(context, bookModel.volumeInfo!.previewLink!);
          },
          text: getText(bookModel),
          textStyle: Styles.textStyle14.copyWith(),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
          backgroundColor: const Color(0xffEF8262),
          foregroundColor: Colors.white,
        ),
      ],
    );
  }

  getText(BookModel bookModel) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return 'Not Available';
    } else {
      return 'Preview';
    }
  }
}
