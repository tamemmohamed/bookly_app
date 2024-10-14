import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_bokk_image_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similir_book_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Column(
        children: [
          const CustomDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: width * .24,
            ),
            child: CustomBookImageItem(
              imageUrl: bookModel.volumeInfo.imageLinks.thumbnail,
            ),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            bookModel.volumeInfo.title!,
            style: Styles.textStyle30.copyWith(
              fontSize: 20,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            bookModel.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w100,
              fontStyle: FontStyle.italic,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          BookRating(
            rating: bookModel.volumeInfo.averageRating == null
                ? 0
                : bookModel.volumeInfo.averageRating!,
            count: bookModel.volumeInfo.ratingsCount == null
                ? 0
                : bookModel.volumeInfo.ratingsCount!,
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          const SizedBox(
            height: 16,
          ),
          const BooksAction(),
          const SizedBox(
            height: 40,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You may like this',
              style: Styles.textStyle16.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          const SimilirBooksListView(),
        ],
      ),
    );
  }
}
