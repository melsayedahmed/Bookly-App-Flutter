import 'package:bookly_app/core/utils/functions/launch_url.dart';
import 'package:bookly_app/core/widgets/custom_bottom.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomBottom(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            backgroundColor: Colors.white,
            textColor: Colors.black,
            text: 'Free',
          ),
        ),
        Expanded(
          child: CustomBottom(
            onPressed: () {
              launchCustomUrl(context, bookModel.volumeInfo.previewLink);
            },
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            text: getText(bookModel),
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avilable';
    } else {
      return 'Preview';
    }
  }
}
