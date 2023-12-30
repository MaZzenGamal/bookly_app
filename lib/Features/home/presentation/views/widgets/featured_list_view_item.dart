import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuildFeaturedListViewItem extends StatelessWidget {
  const BuildFeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 129/193 ,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AssetsData.test),
              ),
            ),
          ),
           Padding(
             padding: const EdgeInsets.all(14.0),
             child: CircleAvatar(
              backgroundColor: Colors.white12.withOpacity(0.15),
              child: const Icon(FontAwesomeIcons.play,size: 10,),
                       ),
           )
        ],
      ),
    );
  }
}
