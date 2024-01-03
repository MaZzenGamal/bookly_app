import 'package:blur/blur.dart';
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
          Container(
            decoration:  BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(18),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(imageUrl),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: const SizedBox(
              width: 50,
              height: 50,
            ).blurred(
                blur: 8,
                colorOpacity: 0.25,
                borderRadius: BorderRadius.circular(50),
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
