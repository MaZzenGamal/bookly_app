import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BuildFeaturedListViewItem extends StatelessWidget {
  const BuildFeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 129/193 ,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AssetsData.test),
          ),
        ),
      ),
    );
  }
}
