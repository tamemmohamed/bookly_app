import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

part 'featurd_books_state.dart';

class FeaturdBooksCubit extends Cubit<FeaturdBooksState> {
  FeaturdBooksCubit() : super(FeaturdBooksInitial());
}
