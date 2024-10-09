
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
            child: CustomBookImageItem(),
          );
        },
      ),
    );
  }
}