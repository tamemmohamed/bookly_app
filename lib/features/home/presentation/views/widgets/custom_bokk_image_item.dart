import 'package:flutter/material.dart';

class CustomBookImageItem extends StatelessWidget {
  const CustomBookImageItem({super.key, required this.imageUrl});

  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            16,
          ),
          image: DecorationImage(
            image: NetworkImage(
              imageUrl,
            ),
          ),
        ),
      ),
    );
  }
}
