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
  );
}
