import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

AppBar bookDetailsViewAppBar(context) {
  return AppBar(
    leadingWidth: 100,
    forceMaterialTransparency: true,
    leading: IconButton(
      iconSize: 25,
      onPressed: () {
        GoRouter.of(context).pop();
      },
      icon: const Icon(FontAwesomeIcons.xmark,),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 30),
        child: IconButton(
          iconSize: 25,
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
            )),
      )
    ],
  );
}
