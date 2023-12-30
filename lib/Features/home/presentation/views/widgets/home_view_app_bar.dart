import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

AppBar homeViewAppBar() {
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
            onPressed: () {},
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
            )),
      )
    ],
  );
}