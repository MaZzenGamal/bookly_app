import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BuildListViewItem extends StatelessWidget {
  const BuildListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 7/10 ,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.test),
            ),
          ),
        ),
      ),
    );
  }
}
