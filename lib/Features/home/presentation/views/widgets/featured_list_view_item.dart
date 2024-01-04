import 'package:blur/blur.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuildFeaturedListViewItem extends StatelessWidget {
  const BuildFeaturedListViewItem({super.key, required this.imageUrl});

  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 129.21 / 193.3,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CustomBookImage(imageUrl: imageUrl,),
          Padding(
            padding: const EdgeInsets.all(10),
            child: const SizedBox(
              width: 30,
              height: 30,
            ).blurred(
                blur: 8,
                colorOpacity: 0.25,
                borderRadius: BorderRadius.circular(30),
                overlay: const Icon(
                  FontAwesomeIcons.play,
                  size: 10,
                )),
          )
        ],
      ),
    );
  }
}
