import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widget/books_action.dart';
import 'package:bookly_app/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.17),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
        ),
        Text(
          bookModel.volumeInfo.authors?[0] ?? '!',
          style: Styles.textStyle18.copyWith(
            color: Colors.white.withOpacity(0.7),
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.02,
        ),
        BookRating(
          rating: bookModel.volumeInfo.averageRating ?? 0,
          count: bookModel.volumeInfo.ratingCount ?? 0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        BooksAction(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
