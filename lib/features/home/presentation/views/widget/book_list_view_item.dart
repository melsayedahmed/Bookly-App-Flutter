import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/core/models/book_model/book_model.dart';
import 'package:bookly_app/features/home/presentation/views/widget/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widget/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView, extra: bookModel);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookImage(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 1 / 13,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 1 / 2,
                  child: Text(
                    bookModel.volumeInfo.title!,
                    style:
                        Styles.textStyle20.copyWith(fontFamily: kGtSectraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1 / 279,
                ),
                Text(
                  bookModel.volumeInfo.authors![0],
                  style: Styles.textStyle14.copyWith(
                    color: Colors.white.withOpacity(0.7),
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1 / 249,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Styles.textStyle20.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 1 / 12,
                    ),
                    BookRating(
                      rating: bookModel.volumeInfo.averageRating?.round() ?? 0,
                      count: bookModel.volumeInfo.ratingCount ?? 0,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
