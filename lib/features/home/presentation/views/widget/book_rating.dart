import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key,
      this.mainAxisAlignment = MainAxisAlignment.start,
      required this.rating,
      required this.count});
  final MainAxisAlignment mainAxisAlignment;
  final num rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(
          FontAwesomeIcons.solidStar,
          size: 16,
          color: Color(0xffFFDD4F),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 1 / 47,
        ),
        Text(
          rating.toString(),
          style: Styles.textStyle16,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 1 / 47,
        ),
        Text(
          '($count)',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.white.withOpacity(0.5),
          ),
        )
      ],
    );
  }
}
