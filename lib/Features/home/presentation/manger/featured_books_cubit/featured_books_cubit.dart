import 'package:bookly/Features/home/data/models/book_model/Book_model.dart';
import 'package:bookly/Features/home/data/models/repos/home_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();

    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.error));
    }
    , (books) {
      emit(FeaturedBooksSuccess(books));
        });
  }
}
