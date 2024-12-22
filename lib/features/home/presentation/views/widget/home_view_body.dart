import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/features/home/presentation/views/widget/newest_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widget/custom_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widget/featured_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              const FeaturedBooksListView(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 1 / 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: const Text(
                  'Newest Books',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 1 / 44,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: NewsBookListView(),
          ),
        )
      ],
    );
  }
}
