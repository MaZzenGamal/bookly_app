import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.rating, required this.count});

  final String rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(FontAwesomeIcons.solidStar,size: 13,color: Colors.yellow,),
        const SizedBox(
          width: 6,
        ),
         Text(
          rating,
          style: Styles.textStyle16,
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          '($count)',
          style: Styles.textStyle14
              .copyWith(color: Colors.white.withOpacity(0.50)),
        ),
      ],
    );
  }
}