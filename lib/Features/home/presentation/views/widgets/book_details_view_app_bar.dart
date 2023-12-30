import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

AppBar bookDetailsViewAppBar(context) {
  return AppBar(
    automaticallyImplyLeading: false,
    forceMaterialTransparency: true,
    leading: Padding(
      padding: const EdgeInsets.only(left: 30),
      child: IconButton(
        onPressed: () {
          GoRouter.of(context).pop();
        },
        icon: const Icon(FontAwesomeIcons.xmark,size: 25,),
      ),
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 30),
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart_outlined,
              size: 25,
            )),
      )
    ],
  );
}
