import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomButton(
          onPressed: () {},
          text: '19.99€',
          textStyle: Styles.textStyle18,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            bottomLeft: Radius.circular(15),
          ),
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
        ),
        CustomButton(
          onPressed: () {},
          text: 'Free preview',
          textStyle: Styles.textStyle14.copyWith(
          ),
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
}
