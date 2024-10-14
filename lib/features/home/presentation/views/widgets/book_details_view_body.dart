import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/books_action_details.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_bokk_image_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similir_book_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
            child: const CustomBookImageItem(
              imageUrl:
                  'https://www.google.com/imgres?q=pictures&imgurl=https%3A%2F%2Fstatic.toiimg.com%2Fthumb%2Fmsid-53891743%2Cwidth-748%2Cheight-499%2Cresizemode%3D4%2Cimgsize-152022%2FTour-Eiffel.jpg&imgrefurl=https%3A%2F%2Ftimesofindia.indiatimes.com%2Ftravel%2Fdestinations%2Fparis-in-pictures%2Fphotostory%2F45454098.cms&docid=3Cgc6XmfuBMATM&tbnid=rInLHBa8ybS5nM&vet=12ahUKEwiPh8SNloyJAxUyU6QEHTaFAIYQM3oECFMQAA..i&w=748&h=499&hcb=2&ved=2ahUKEwiPh8SNloyJAxUyU6QEHTaFAIYQM3oECFMQAA',
            ),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            'The Jungle Book',
            style: Styles.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            'Rudyard Kipling',
            style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.w100,
              fontStyle: FontStyle.italic,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          //  BookRating(
          //   rating: bookModel!.volumeInfo.averageRating!,
          //   count: bookModel!.volumeInfo.ratingsCount!,
          //   mainAxisAlignment: MainAxisAlignment.center,
          // ),
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
