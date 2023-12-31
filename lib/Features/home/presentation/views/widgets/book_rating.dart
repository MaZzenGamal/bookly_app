import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(FontAwesomeIcons.solidStar,size: 13,color: Colors.yellow,),
        const SizedBox(
          width: 6,
        ),
        const Text(
          '4.8',
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '(2390)',
          style: Styles.textStyle14
              .copyWith(color: Colors.white.withOpacity(0.50)),
        ),
      ],
    );
  }
}