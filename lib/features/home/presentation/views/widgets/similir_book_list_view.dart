import 'package:bookly_app/features/home/presentation/views/widgets/custom_bokk_image_item.dart';
import 'package:flutter/material.dart';

class SimilirBooksListView extends StatelessWidget {
  const SimilirBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(
              right: 8,
            ),
            child: CustomBookImageItem(
              imageUrl:
                  'https://www.google.com/imgres?q=pictures&imgurl=https%3A%2F%2Fstatic.toiimg.com%2Fthumb%2Fmsid-53891743%2Cwidth-748%2Cheight-499%2Cresizemode%3D4%2Cimgsize-152022%2FTour-Eiffel.jpg&imgrefurl=https%3A%2F%2Ftimesofindia.indiatimes.com%2Ftravel%2Fdestinations%2Fparis-in-pictures%2Fphotostory%2F45454098.cms&docid=3Cgc6XmfuBMATM&tbnid=rInLHBa8ybS5nM&vet=12ahUKEwiPh8SNloyJAxUyU6QEHTaFAIYQM3oECFMQAA..i&w=748&h=499&hcb=2&ved=2ahUKEwiPh8SNloyJAxUyU6QEHTaFAIYQM3oECFMQAA',
            ),
          );
        },
      ),
    );
  }
}
