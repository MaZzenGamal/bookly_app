import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SimilarListViewItem extends StatelessWidget {
  const SimilarListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 70 / 112,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AssetsData.test),
          ),
        ),
      ),
    );
  }
}
