import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(FontAwesomeIcons.solidStar,size: 13,color: Colors.yellow,),
        SizedBox(
          width: 6,
        ),
        Text(
          '4.8',
          style: Styles.textStyle16,
        ),
      ],
    );
  }
}