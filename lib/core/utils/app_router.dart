import 'package:bookly/Features/Splash/presentation/views/splash_view.dart';
import 'package:bookly/Features/home/data/models/book_model/Book_model.dart';
import 'package:bookly/Features/home/data/models/repos/home_repo_imp.dart';
import 'package:bookly/Features/home/presentation/manger/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/Features/home/presentation/views/book_details_view.dart';
import 'package:bookly/Features/home/presentation/views/home_view.dart';
import 'package:bookly/Features/search/data/repos/search_repo_imp.dart';
import 'package:bookly/Features/search/presentation/manger/search_cubit/search__cubit.dart';
import 'package:bookly/Features/search/presentation/views/search_view.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/BookDetailsView';
  static const kSearchView = '/SearchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) =>
            BlocProvider(
                create: (context) =>
                    SimilarBooksCubit(
                        getIt.get<HomeRepoImp>()
                    ),
                child: BookDetailsView(
                  bookModel: state.extra as BookModel,
                )),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) =>
            BlocProvider(
              create: (context) => SearchCubit(
                getIt.get<SearchRepoImp>()
              ),
              child: const SearchView(),
            ),
      ),
    ],
  );
}
