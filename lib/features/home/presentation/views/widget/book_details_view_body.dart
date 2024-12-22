import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widget/book_details_section.dart';
import 'package:bookly_app/features/home/presentation/views/widget/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widget/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
                const SimilarBooksSection(),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
