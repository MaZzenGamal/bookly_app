import 'package:bookly/Features/home/data/models/repos/home_repo_imp.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<HomeRepoImp>(
    HomeRepoImp(
      ApiService(),
    ),
  );
}
