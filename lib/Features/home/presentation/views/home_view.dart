import 'package:bookly/Features/home/presentation/views/widgets/home_view_app_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeViewAppBar(),
      body: const HomeViewBody(),
    );
  }


}
