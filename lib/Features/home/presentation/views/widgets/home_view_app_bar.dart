import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

AppBar homeViewAppBar(context) {
  return AppBar(
    automaticallyImplyLeading: false,
    forceMaterialTransparency: true,
    title: Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Image.asset(
        AssetsData.logo,
        width: 75,
        height: 18,
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 30),
        child: IconButton(
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchView);
          },
          icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
          ),
        ),
      )
    ],
  );
}
