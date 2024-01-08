import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/Book_model.dart';
import 'package:bookly/Features/search/data/repos/search_repo.dart';
import 'package:meta/meta.dart';

part 'search__state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this.searchRepo) : super(SearchInitial());

  final SearchRepo searchRepo;

  Future<void> fetchSearchBooks({required String text}) async {
    emit(SearchLoading());
    var result = await searchRepo.fetchSearchBooks(text);

    result.fold((failure) {
      emit(SearchFailure(failure.error));
    }, (books) {
      emit(SearchSuccess(books));
    });
  }
}
