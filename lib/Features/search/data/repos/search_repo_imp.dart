import 'package:bookly/Features/home/data/models/book_model/Book_model.dart';
import 'package:bookly/Features/search/data/repos/search_repo.dart';
import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchRepoImp implements SearchRepo{

  final ApiService apiService;

  SearchRepoImp(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchSearchBooks(final String text) async{
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevance&q=$text');

      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        print(e);
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}