import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Free',
              backgroundcolor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  16,
                ),
                bottomLeft: Radius.circular(
                  16,
                ),
              ),
              fontSize: 18,
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              backgroundcolor: Color.fromARGB(255, 248, 134, 100),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(
                  16,
                ),
                bottomRight: Radius.circular(
                  16,
                ),
              ),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
