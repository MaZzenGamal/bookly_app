import 'package:blur/blur.dart';
import 'package:bookly/Features/home/data/models/book_model/Book_model.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BuildFeaturedListViewItem extends StatelessWidget {
  const BuildFeaturedListViewItem(
      {super.key, required this.imageUrl, required this.bookModel});

  final BookModel bookModel;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: bookModel);
      },
      child: AspectRatio(
        aspectRatio: 129.21 / 193.3,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            CustomBookImage(
              imageUrl: imageUrl,
            ),
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
      ),
    );
  }
}
