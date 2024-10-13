part of 'featurd_books_cubit.dart';

sealed class FeaturdBooksState extends Equatable {
  const FeaturdBooksState();

  @override
  List<Object> get props => [];
}

final class FeaturdBooksInitial extends FeaturdBooksState {}

final class FeaturdBooksLoading extends FeaturdBooksState {}

final class FeaturdBooksFailure extends FeaturdBooksState {
  final String errMessage;

  const FeaturdBooksFailure(this.errMessage);
}

final class FeaturdBooksSuccess extends FeaturdBooksState {
  final List<BookModel> books;

  const FeaturdBooksSuccess(this.books);
}
